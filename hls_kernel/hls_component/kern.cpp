#include <stdint.h>
#include "ap_axi_sdata.h"
#include "hls_stream.h"

#define IM_H        32
#define IM_W        32
#define IM_C         3
#define KERN         3
#define PAD          1

#define CHAN_L1   64    // L1 out: 32×32×64   (no pool)
#define CHAN_L2  128    // L2 out: pool → 16×16×128
#define CHAN_L3  256    // L3 out: pool →  8× 8×256
#define CHAN_L4  512    // L4 out: pool →  4× 4×512 → MLP input

#define HL_SIZE   512   // hidden-layer width for both MLP hidden layers
#define OUT_CLASSES 10

typedef ap_axiu<32, 0, 0, 0> pkt;
typedef ap_uint<32>           data;
typedef int32_t               acc_t;   // signed; must not be uint

static inline ap_uint<1> batch_norm_relu(acc_t val)
{
    return (val >= 0) ? ap_uint<1>(1) : ap_uint<1>(0);
}

void conv2d_l1(
    uint16_t   input[IM_H * IM_W * IM_C],
    ap_uint<1> kern[3][KERN * KERN],
    ap_uint<2> num_kerns,
    int        in_ch_start,
    acc_t      buffer[IM_H * IM_W],
    bool       finalize,
    acc_t      bias,
    int        out_ch,
    ap_uint<1> output[IM_H / 2][IM_W / 2][CHAN_L1])
{
#pragma HLS INLINE off
    const int IH = IM_H, IW = IM_W;

    if (!finalize) {
        INIT_H: for (int oh = 0; oh < IH; oh++) {
        INIT_W: for (int ow = 0; ow < IW; ow++) {
            acc_t loc = buffer[oh * IW + ow];
            INIT_K: for (int k = 0; k < 3; k++) {
                if (k < (int)num_kerns) {
                    INIT_KH: for (int kh = 0; kh < KERN; kh++) {
                    INIT_KW: for (int kw = 0; kw < KERN; kw++) {
                    #pragma HLS PIPELINE II=1
                        int ih = oh + kh - PAD, iw = ow + kw - PAD;
                        if (ih >= 0 && ih < IH && iw >= 0 && iw < IW) {
                            uint16_t   px = input[(ih * IW + iw) * IM_C + (in_ch_start + k)];
                            ap_uint<1> w  = kern[k][kh * KERN + kw];
                            loc += w ? (acc_t)px : -(acc_t)px;
                        }
                    }}
                }
            }
            buffer[oh * IW + ow] = loc;
        }}
    } else {
        // 2×2 integer max-pool 32×32 → 16×16, then BN+sign.
        INIT_FH: for (int oh = 0; oh < IH / 2; oh++) {
        INIT_FW: for (int ow = 0; ow < IW / 2; ow++) {
        #pragma HLS PIPELINE II=1
            int bh = 2 * oh, bw = 2 * ow;
            acc_t a00 = buffer[bh     * IW + bw    ];
            acc_t a01 = buffer[bh     * IW + bw + 1];
            acc_t a10 = buffer[(bh+1) * IW + bw    ];
            acc_t a11 = buffer[(bh+1) * IW + bw + 1];
            acc_t mx  = (a00 > a01 ? a00 : a01) > (a10 > a11 ? a10 : a11)
                      ? (a00 > a01 ? a00 : a01) : (a10 > a11 ? a10 : a11);
            output[oh][ow][out_ch] = batch_norm_relu(mx + bias);
            buffer[bh     * IW + bw    ] = 0;
            buffer[bh     * IW + bw + 1] = 0;
            buffer[(bh+1) * IW + bw    ] = 0;
            buffer[(bh+1) * IW + bw + 1] = 0;
        }}
    }
}

void conv2d_l2(
    ap_uint<1> input[IM_H / 2][IM_W / 2][CHAN_L1],
    ap_uint<1> kern[3][KERN * KERN],
    ap_uint<2> num_kerns,
    int        in_ch_start,
    acc_t      buffer[IM_H * IM_W],
    bool       finalize,
    acc_t      bias,
    int        out_ch,
    ap_uint<1> output[IM_H / 4][IM_W / 4][CHAN_L2])
{
#pragma HLS INLINE off
    const int IH = IM_H / 2, IW = IM_W / 2;   // 16×16 pre-pool

    if (!finalize) {
        L2_H: for (int oh = 0; oh < IH; oh++) {
        L2_W: for (int ow = 0; ow < IW; ow++) {
            acc_t loc = buffer[oh * IW + ow];
            L2_K: for (int k = 0; k < 3; k++) {
                if (k < (int)num_kerns) {
                    L2_KH: for (int kh = 0; kh < KERN; kh++) {
                    L2_KW: for (int kw = 0; kw < KERN; kw++) {
                    #pragma HLS PIPELINE II=1
                        int ih = oh + kh - PAD, iw = ow + kw - PAD;
                        if (ih >= 0 && ih < IH && iw >= 0 && iw < IW) {
                            ap_uint<1> a = input[ih][iw][in_ch_start + k];
                            ap_uint<1> w = kern[k][kh * KERN + kw];
                            loc += (a == w) ? (acc_t)1 : (acc_t)-1;
                        }
                    }}
                }
            }
            buffer[oh * IW + ow] = loc;
        }}
    } else {
        // 2×2 integer max-pool 16×16 → 8×8, then BN+sign.
        L2_FH: for (int oh = 0; oh < IH / 2; oh++) {
        L2_FW: for (int ow = 0; ow < IW / 2; ow++) {
        #pragma HLS PIPELINE II=1
            int bh = 2 * oh, bw = 2 * ow;
            acc_t a00 = buffer[bh     * IW + bw    ];
            acc_t a01 = buffer[bh     * IW + bw + 1];
            acc_t a10 = buffer[(bh+1) * IW + bw    ];
            acc_t a11 = buffer[(bh+1) * IW + bw + 1];
            acc_t mx  = (a00 > a01 ? a00 : a01) > (a10 > a11 ? a10 : a11)
                      ? (a00 > a01 ? a00 : a01) : (a10 > a11 ? a10 : a11);
            output[oh][ow][out_ch] = batch_norm_relu(mx + bias);
            buffer[bh     * IW + bw    ] = 0;
            buffer[bh     * IW + bw + 1] = 0;
            buffer[(bh+1) * IW + bw    ] = 0;
            buffer[(bh+1) * IW + bw + 1] = 0;
        }}
    }
}

void conv2d_l3(
    ap_uint<1> input[IM_H / 4][IM_W / 4][CHAN_L2],
    ap_uint<1> kern[3][KERN * KERN],
    ap_uint<2> num_kerns,
    int        in_ch_start,
    acc_t      buffer[IM_H * IM_W],
    bool       finalize,
    acc_t      bias,
    int        out_ch,
    ap_uint<1> output[IM_H / 8][IM_W / 8][CHAN_L3])
{
#pragma HLS INLINE off
    const int IH = IM_H / 4, IW = IM_W / 4;   // 8×8 pre-pool

    if (!finalize) {
        L3_H: for (int oh = 0; oh < IH; oh++) {
        L3_W: for (int ow = 0; ow < IW; ow++) {
            acc_t loc = buffer[oh * IW + ow];
            L3_K: for (int k = 0; k < 3; k++) {
                if (k < (int)num_kerns) {
                    L3_KH: for (int kh = 0; kh < KERN; kh++) {
                    L3_KW: for (int kw = 0; kw < KERN; kw++) {
                    #pragma HLS PIPELINE II=1
                        int ih = oh + kh - PAD, iw = ow + kw - PAD;
                        if (ih >= 0 && ih < IH && iw >= 0 && iw < IW) {
                            ap_uint<1> a = input[ih][iw][in_ch_start + k];
                            ap_uint<1> w = kern[k][kh * KERN + kw];
                            loc += (a == w) ? (acc_t)1 : (acc_t)-1;
                        }
                    }}
                }
            }
            buffer[oh * IW + ow] = loc;
        }}
    } else {
        // 2×2 integer max-pool 8×8 → 4×4, then BN+sign.
        L3_FH: for (int oh = 0; oh < IH / 2; oh++) {
        L3_FW: for (int ow = 0; ow < IW / 2; ow++) {
        #pragma HLS PIPELINE II=1
            int bh = 2 * oh, bw = 2 * ow;
            acc_t a00 = buffer[bh     * IW + bw    ];
            acc_t a01 = buffer[bh     * IW + bw + 1];
            acc_t a10 = buffer[(bh+1) * IW + bw    ];
            acc_t a11 = buffer[(bh+1) * IW + bw + 1];
            acc_t mx  = (a00 > a01 ? a00 : a01) > (a10 > a11 ? a10 : a11)
                      ? (a00 > a01 ? a00 : a01) : (a10 > a11 ? a10 : a11);
            output[oh][ow][out_ch] = batch_norm_relu(mx + bias);
            buffer[bh     * IW + bw    ] = 0;
            buffer[bh     * IW + bw + 1] = 0;
            buffer[(bh+1) * IW + bw    ] = 0;
            buffer[(bh+1) * IW + bw + 1] = 0;
        }}
    }
}


void conv2d_l4(
    ap_uint<1> input[IM_H / 8][IM_W / 8][CHAN_L3],
    ap_uint<1> kern[3][KERN * KERN],
    ap_uint<2> num_kerns,
    int        in_ch_start,
    acc_t      buffer[IM_H * IM_W],
    bool       finalize,
    acc_t      bias,
    int        out_ch,
    ap_uint<1> output[IM_H / 16][IM_W / 16][CHAN_L4])
{
#pragma HLS INLINE off
    const int IH = IM_H / 8, IW = IM_W / 8;   // 4×4 pre-pool

    if (!finalize) {
        L4_H: for (int oh = 0; oh < IH; oh++) {
        L4_W: for (int ow = 0; ow < IW; ow++) {
            acc_t loc = buffer[oh * IW + ow];
            L4_K: for (int k = 0; k < 3; k++) {
                if (k < (int)num_kerns) {
                    L4_KH: for (int kh = 0; kh < KERN; kh++) {
                    L4_KW: for (int kw = 0; kw < KERN; kw++) {
                    #pragma HLS PIPELINE II=1
                        int ih = oh + kh - PAD, iw = ow + kw - PAD;
                        if (ih >= 0 && ih < IH && iw >= 0 && iw < IW) {
                            ap_uint<1> a = input[ih][iw][in_ch_start + k];
                            ap_uint<1> w = kern[k][kh * KERN + kw];
                            loc += (a == w) ? (acc_t)1 : (acc_t)-1;
                        }
                    }}
                }
            }
            buffer[oh * IW + ow] = loc;
        }}
    } else {
        // 2×2 integer max-pool 4×4 → 2×2, then BN+sign.
        L4_FH: for (int oh = 0; oh < IH / 2; oh++) {
        L4_FW: for (int ow = 0; ow < IW / 2; ow++) {
        #pragma HLS PIPELINE II=1
            int bh = 2 * oh, bw = 2 * ow;
            acc_t a00 = buffer[bh     * IW + bw    ];
            acc_t a01 = buffer[bh     * IW + bw + 1];
            acc_t a10 = buffer[(bh+1) * IW + bw    ];
            acc_t a11 = buffer[(bh+1) * IW + bw + 1];
            acc_t mx  = (a00 > a01 ? a00 : a01) > (a10 > a11 ? a10 : a11)
                      ? (a00 > a01 ? a00 : a01) : (a10 > a11 ? a10 : a11);
            output[oh][ow][out_ch] = batch_norm_relu(mx + bias);
            buffer[bh     * IW + bw    ] = 0;
            buffer[bh     * IW + bw + 1] = 0;
            buffer[(bh+1) * IW + bw    ] = 0;
            buffer[(bh+1) * IW + bw + 1] = 0;
        }}
    }
}


void softmax(acc_t logits[OUT_CLASSES], uint16_t probs[OUT_CLASSES])
{
#pragma HLS INLINE off
    acc_t max_val = logits[0];
    SM_MAX: for (int i = 1; i < OUT_CLASSES; i++) {
    #pragma HLS UNROLL
        if (logits[i] > max_val) max_val = logits[i];
    }
    const int32_t K = HL_SIZE;
    int32_t ev[OUT_CLASSES], es = 0;
    SM_EXP: for (int i = 0; i < OUT_CLASSES; i++) {
    #pragma HLS UNROLL
        int32_t x = (int32_t)(logits[i] - max_val);
        ev[i] = (x > -K) ? (K + x) : 0;
        es   += ev[i];
    }
    SM_NORM: for (int i = 0; i < OUT_CLASSES; i++) {
    #pragma HLS PIPELINE II=1
        probs[i] = (es > 0) ? (uint16_t)(((int32_t)ev[i] * 65535) / es) : 0;
    }
}

extern "C" {
void kernel(
    hls::stream<pkt> &A,
    hls::stream<pkt> &B)
{
#pragma HLS INTERFACE mode = axis port = A
#pragma HLS INTERFACE mode = axis port = B
#pragma HLS INTERFACE mode = s_axilite port = return bundle = control

    uint16_t   starting_image[IM_H * IM_W * IM_C];
#pragma HLS ARRAY_PARTITION variable=starting_image cyclic factor=14 dim=1
    ap_uint<1> packed_image_1[IM_H / 2 ][IM_W / 2 ][CHAN_L1];  // 16×16×64
#pragma HLS ARRAY_PARTITION variable=packed_image_1 cyclic factor=14 dim=3
    ap_uint<1> packed_image_2[IM_H / 4 ][IM_W / 4 ][CHAN_L2];  //  8× 8×128
#pragma HLS ARRAY_PARTITION variable=packed_image_2 cyclic factor=14 dim=3
    ap_uint<1> packed_image_3[IM_H / 8 ][IM_W / 8 ][CHAN_L3];  //  4× 4×256
#pragma HLS ARRAY_PARTITION variable=packed_image_3 cyclic factor=14 dim=3
    ap_uint<1> packed_image_4[IM_H / 16][IM_W / 16][CHAN_L4];  //  2× 2×512
#pragma HLS ARRAY_PARTITION variable=packed_image_4 cyclic factor=14 dim=3

    ap_uint<1> mlp_hidden_1[HL_SIZE];   // case-5 output
    ap_uint<1> mlp_hidden_2[HL_SIZE];   // case-6 output
    acc_t    logits[OUT_CLASSES];
    uint16_t probs[OUT_CLASSES];

    acc_t buffer[IM_H * IM_W];
#pragma HLS ARRAY_PARTITION variable=buffer cyclic factor=2 dim=1
    for (int i = 0; i < IM_H * IM_W; i++) buffer[i] = 0;

    ap_uint<1> kern_a[3][KERN * KERN];
#pragma HLS ARRAY_PARTITION variable=kern_a complete dim=0

    pkt         in_pkt, out_pkt;
    data        ret_data;
    ap_uint<27> pkt_data;
    ap_uint<3>  pkt_id;
    ap_uint<2>  pkt_num_kerns;

    uint16_t image_counter = 0;

    // Conv state: *_out_ch = current output channel, *_in_off = input ch offset
    int conv1_out_ch = 0, conv1_in_off = 0;
    int conv2_out_ch = 0, conv2_in_off = 0;
    int conv3_out_ch = 0, conv3_in_off = 0;
    int conv4_out_ch = 0, conv4_in_off = 0;

    // MLP state: *_neuron = current output neuron, *_w_off = bits processed,
    //            *_acc = running XNOR-popcount accumulator
    int   mlp1_neuron = 0, mlp1_w_off = 0;  acc_t mlp1_acc = 0;
    int   mlp2_neuron = 0, mlp2_w_off = 0;  acc_t mlp2_acc = 0;
    int   mlpo_neuron = 0, mlpo_w_off = 0;  acc_t mlpo_acc = 0;

    const int MLP1_IN  = (IM_H / 16) * (IM_W / 16) * CHAN_L4;  // 2×2×512 = 2048
    const int MLP23_IN = HL_SIZE;                              // 512

    bool eos = false;

kernel_loop: while (!eos) {

        in_pkt = A.read();

        pkt_id        = (ap_uint<3>)((in_pkt.get_data() >> 29) & 0x7);
        pkt_num_kerns = (ap_uint<2>)((in_pkt.get_data() >> 27) & 0x3);
        pkt_data      = (ap_uint<27>)(in_pkt.get_data() & 0x07FFFFFF);

        // kern_a[k][b] at bit (26 − k×9 − b)
        for (int k = 0; k < 3; k++) {
        #pragma HLS UNROLL
            for (int b = 0; b < KERN * KERN; b++) {
            #pragma HLS UNROLL
                kern_a[k][b] = (ap_uint<1>)((pkt_data >> (26 - k * 9 - b)) & 0x1);
            }
        }

        switch ((int)pkt_id) {

            case 0: {
                starting_image[image_counter] = (uint16_t)(pkt_data & 0xFFFF);
                image_counter++;
                break;
            }

            case 1: {
                if (conv1_out_ch < CHAN_L1) {
                    if (pkt_num_kerns > 0) {
                        conv2d_l1(starting_image, kern_a, pkt_num_kerns,
                                  conv1_in_off, buffer,
                                  false, 0, conv1_out_ch, packed_image_1);
                        conv1_in_off += (int)pkt_num_kerns;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        conv2d_l1(starting_image, kern_a, 0,
                                  conv1_in_off, buffer,
                                  true, bias, conv1_out_ch, packed_image_1);
                        conv1_in_off = 0;
                        conv1_out_ch++;
                    }
                }
                break;
            }

            case 2: {
                if (conv2_out_ch < CHAN_L2) {
                    if (pkt_num_kerns > 0) {
                        conv2d_l2(packed_image_1, kern_a, pkt_num_kerns,
                                  conv2_in_off, buffer,
                                  false, 0, conv2_out_ch, packed_image_2);
                        conv2_in_off += (int)pkt_num_kerns;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        conv2d_l2(packed_image_1, kern_a, 0,
                                  conv2_in_off, buffer,
                                  true, bias, conv2_out_ch, packed_image_2);
                        conv2_in_off = 0;
                        conv2_out_ch++;
                    }
                }
                break;
            }

            case 3: {
                if (conv3_out_ch < CHAN_L3) {
                    if (pkt_num_kerns > 0) {
                        conv2d_l3(packed_image_2, kern_a, pkt_num_kerns,
                                  conv3_in_off, buffer,
                                  false, 0, conv3_out_ch, packed_image_3);
                        conv3_in_off += (int)pkt_num_kerns;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        conv2d_l3(packed_image_2, kern_a, 0,
                                  conv3_in_off, buffer,
                                  true, bias, conv3_out_ch, packed_image_3);
                        conv3_in_off = 0;
                        conv3_out_ch++;
                    }
                }
                break;
            }

            case 4: {
                if (conv4_out_ch < CHAN_L4) {
                    if (pkt_num_kerns > 0) {
                        conv2d_l4(packed_image_3, kern_a, pkt_num_kerns,
                                  conv4_in_off, buffer,
                                  false, 0, conv4_out_ch, packed_image_4);
                        conv4_in_off += (int)pkt_num_kerns;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        conv2d_l4(packed_image_3, kern_a, 0,
                                  conv4_in_off, buffer,
                                  true, bias, conv4_out_ch, packed_image_4);
                        conv4_in_off = 0;
                        conv4_out_ch++;
                    }
                }
                break;
            }

            case 5: {
                if (mlp1_neuron < HL_SIZE) {
                    if (pkt_num_kerns > 0) {
                        int total = (int)pkt_num_kerns * KERN * KERN;
                        MLP1_BITS: for (int i = 0; i < total; i++) {
                        #pragma HLS PIPELINE II=1
                            int flat = mlp1_w_off + i;
                            if (flat >= MLP1_IN) break;
                            int ch  = flat % CHAN_L4;
                            int hw  = flat / CHAN_L4;
                            int col = hw   % (IM_W / 16);
                            int row = hw   / (IM_W / 16);
                            ap_uint<1> a = packed_image_4[row][col][ch];
                            ap_uint<1> w = kern_a[i / (KERN*KERN)][i % (KERN*KERN)];
                            mlp1_acc += (a == w) ? (acc_t)1 : (acc_t)-1;
                        }
                        mlp1_w_off += (int)pkt_num_kerns * KERN * KERN;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        mlp_hidden_1[mlp1_neuron] = batch_norm_relu(mlp1_acc + bias);
                        mlp1_acc   = 0;
                        mlp1_w_off = 0;
                        mlp1_neuron++;
                    }
                }
                break;
            }

            case 6: {
                if (mlp2_neuron < HL_SIZE) {
                    if (pkt_num_kerns > 0) {
                        int total = (int)pkt_num_kerns * KERN * KERN;
                        MLP2_BITS: for (int i = 0; i < total; i++) {
                        #pragma HLS PIPELINE II=1
                            int flat = mlp2_w_off + i;
                            if (flat >= MLP23_IN) break;
                            ap_uint<1> a = mlp_hidden_1[flat];
                            ap_uint<1> w = kern_a[i / (KERN*KERN)][i % (KERN*KERN)];
                            mlp2_acc += (a == w) ? (acc_t)1 : (acc_t)-1;
                        }
                        mlp2_w_off += (int)pkt_num_kerns * KERN * KERN;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        mlp_hidden_2[mlp2_neuron] = batch_norm_relu(mlp2_acc + bias);
                        mlp2_acc   = 0;
                        mlp2_w_off = 0;
                        mlp2_neuron++;
                    }
                }
                break;
            }

            case 7: {
                if (mlpo_neuron < OUT_CLASSES) {
                    if (pkt_num_kerns > 0) {
                        int total = (int)pkt_num_kerns * KERN * KERN;
                        MLPO_BITS: for (int i = 0; i < total; i++) {
                        #pragma HLS PIPELINE II=1
                            int flat = mlpo_w_off + i;
                            if (flat >= MLP23_IN) break;
                            ap_uint<1> a = mlp_hidden_2[flat];
                            ap_uint<1> w = kern_a[i / (KERN*KERN)][i % (KERN*KERN)];
                            mlpo_acc += (a == w) ? (acc_t)1 : (acc_t)-1;
                        }
                        mlpo_w_off += (int)pkt_num_kerns * KERN * KERN;
                    } else {
                        acc_t bias = (acc_t)(int16_t)(pkt_data & 0xFFFF);
                        logits[mlpo_neuron] = mlpo_acc + bias;
                        mlpo_acc   = 0;
                        mlpo_w_off = 0;
                        mlpo_neuron++;

                        if (mlpo_neuron == OUT_CLASSES) {
                            softmax(logits, probs);
                            OUT_STREAM: for (int c = 0; c < OUT_CLASSES; c += 2) {
                                ret_data = ((uint32_t)probs[c] << 16)
                                         | (uint32_t)probs[c + 1];
                                out_pkt.set_data(ret_data);
                                out_pkt.set_last((c + 2 >= OUT_CLASSES) ? 1 : 0);
                                out_pkt.set_keep(-1);
                                B.write(out_pkt);
                            }
                        }
                    }
                }
                break;
            }

        }

        if (in_pkt.get_last())
            eos = true;

    }
}
}