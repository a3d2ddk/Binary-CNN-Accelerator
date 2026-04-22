#include <stdint.h>
#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef ap_axiu<32, 0, 0, 8> pkt;
typedef ap_uint<32> data;

struct model_struct{
    int a;
};

extern "C" {
    void kernel(
        hls::stream<pkt> &A,
        hls::stream<pkt> &B)
    {
#pragma HLS INTERFACE mode = axis port = A
#pragma HLS INTERFACE mode = axis port = B
#pragma HLS INTERFACE mode = s_axilite port = return bundle = control

        bool eos = false;
        
        int8_t pkt_id;

    kernel: while (eos == false) {
#pragma HLS PIPELINE II = 1

        pkt bag = A.read();
        data stuff = bag.get_data();

        pkt_id = bag.get_dest();

        switch((pkt_id & 0xc0) >> 6) {
            case 0:
            case 1:
            case 2:
            case 3:
        }
        
        if (bag.get_last()) {
                eos = true;
            }
        }
    }
}