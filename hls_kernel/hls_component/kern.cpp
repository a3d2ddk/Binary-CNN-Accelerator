#include <stdint.h>
#include "ap_axi_sdata.h"
#include "hls_stream.h"

// cannot be larger than 30
#define MAX_NUM_LAYERS 10
// total max buffer sizes are the number * 8
#define PARAM_BUFF 100
#define IM_BUFF 100

struct model_struct{
    uint16_t im_shape[3];                       // starting image shape
    uint16_t layer_channels[MAX_NUM_LAYERS];    // number of channels in each layer
    uint8_t output_num;                         // final number mlp outputs
    uint8_t layer_kerns[MAX_NUM_LAYERS];        // square kernel sizes per layer (eg. 5x5 kernel is simply stored as 5)
    uint8_t packed_image[IM_BUFF];              // the storage buffer for image data
    uint8_t packed_params[PARAM_BUFF];          // storage for all model parameters
    bool set[3];                                // verification that all model data is set before performing convolutions
};

// data is for each packet is an int and a byte sized destination
typedef ap_axiu<32, 0, 0, 0> pkt;
typedef ap_uint<32> data;

extern "C" {
    void kernel(
        hls::stream<pkt> &A,
        hls::stream<pkt> &B)
    {
#pragma HLS INTERFACE mode = axis port = A
#pragma HLS INTERFACE mode = axis port = B
#pragma HLS INTERFACE mode = s_axilite port = return bundle = control

        model_struct model;
        model.set[0] = false;
        model.set[1] = false;
        model.set[2] = false;
        
        pkt in_pkt;
        pkt out_pkt;
        data ret_data;
        uint32_t param_counter = 0;
        uint16_t pkt_data;
        uint8_t pkt_id;
        
        bool eos = false;

    kernel: while (eos == false) {
#pragma HLS PIPELINE II = 1

        in_pkt = A.read();
        pkt_data = static_cast<uint16_t>(in_pkt.get_data() & 0x0000ffff);

        pkt_id = static_cast<uint8_t>((in_pkt.get_data() & 0xff000000) >> 24);

        switch((pkt_id & 0xc0) >> 6) {      // checks first two bits of dest
            case 0:
                // set image data and run inference
                if(model.set[0] == true && model.set[1] == true && model.set[2] == true) {
                    // initial convolution
                    uint32_t count = (model.layer_kerns[0] * model.layer_kerns[0]) * im_shape[2];

                    // bulk convolutions

                    // final mlp and output
                }
                
                
            case 1:
                // set model parameters
                if((pkt_id & 0x3f) == 0) {
                    // setting parameters one at a time
                    if(pkt_data == 1) {
                        // filling up each byte with 1s for +1 and 0s for -1
                        // example for four bits: 1011 is +1, -1, +1, +1
                        model.packed_params[(param_counter / 8)] = (1 << (7 - (param_counter % 8))) & model.packed_params[(param_counter / 8)];
                    }
                    param_counter++;
                } else {
                    // "clearing parameters"
                    param_counter = 0;
                }
                model.set[0] = true;

                
            case 2:
                // set model dimensions
                if((pkt_id & 0x3f) == 0x3f) {
                    // set final mlp output size
                    model.output_num = static_cast<uint8_t>(pkt_data);
                    model.set[1] = true;
                } else {
                    if((pkt_id & 0x20) == 0x20) {
                        // set layer kern size
                        model.layer_kerns[(pkt_id & 0x1f)] = static_cast<uint8_t>(pkt_data);
                    } else {
                        // set layer channel num
                        model.layer_channels[(pkt_id & 0x1f)] = static_cast<uint16_t>(pkt_data);
                    }
                }

                    
            case 3:
                // set image dimensions
                switch((pkt_id & 0x3f)) {
                    case 0x00:
                        // set image height
                        model.im_shape[0] = static_cast<uint16_t>(pkt_data);
                    case 0x07:
                        // set image width
                        model.im_shape[1] = static_cast<uint16_t>(pkt_data);
                    case 0x3f:
                        // set image channel num
                        model.im_shape[2] = static_cast<uint16_t>(pkt_data);
                    default:
                        // should not happen
                        eos = true;
                    }
                model.set[2] = true;

                
            default:
                /*
                this Is just example code for now showing how data should be returned
                */
               ret_data = 0;
               out_pkt.set_data(ret_data);
               out_pkt.set_last(in_pkt.get_last());
               out_pkt.set_keep(-1);
               B.write(out_pkt);
            }
        
        if (in_pkt.get_last()) {
                eos = true;
            }
        }
    }
}