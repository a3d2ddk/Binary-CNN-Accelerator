#include <stdint.h>
#include "ap_axi_sdata.h"
#include "hls_stream.h"

struct model_struct{
    uint16_t im_shape[3];
    uint16_t layer_channels[6];
    uint8_t mlp_size;
    uint8_t packed_image[50];
    uint8_t packed_params[50];
    bool set[3];
};

// data is for each packet is an int and a byte sized destination
typedef ap_axiu<32, 0, 0, 8> pkt;
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
        uint32_t pkt_data;
        uint8_t pkt_id;
        uint8_t param_counter = 0;
        
        bool eos = false;

    kernel: while (eos == false) {
#pragma HLS PIPELINE II = 1

        in_pkt = A.read();
        pkt_data = static_cast<uint32_t>(in_pkt.get_data());

        pkt_id = static_cast<uint8_t>(in_pkt.get_dest());

        switch((pkt_id & 0xc0) >> 6) {      // checks first two bits of dest
            case 0:
                // set image data and run inference
                if(model.set[0] == true && model.set[1] == true && model.set[2] == true) {
                    
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
                switch((pkt_id & 0x3f)) {
                    case 0x00:
                        // set mlp size
                        model.set[1] = true;
                    case 0x01:
                        // set channel 1 size
                    case 0x02:
                        // set channel 2 size
                    case 0x04:
                        // set channel 3 size
                    case 0x08:
                        // set channel 4 size
                    case 0x10:
                        // set channel 5 size
                    case 0x20:
                        // set channel 6 size
                    default:
                        // should not happen
                    }

                    
            case 3:
                // set image dimensions
                switch((pkt_id & 0x3f)) {
                    case 0x00:
                        // set image height
                    case 0x07:
                        // set image width
                    case 0x3f:
                        // set image channel num
                    default:
                        // should not happen
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