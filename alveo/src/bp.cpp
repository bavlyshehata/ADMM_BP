#include <iostream>
#include <stdint.h>
#include <hls_stream.h>

#define N 8
#define FIFO_DEPTH  N + 4
#define MAX_ITER 2

// TRIPCOUNT identifier
const int c_size = N;

static void load_input(float* in, float* out, int size) {
l_load_input:
    for (int i = 0; i < size; i++) {
    #pragma HLS pipeline
        out[i] = in[i];
    }
}


static void vec_sub(hls::stream<float>& in1,
                    hls::stream<float>& in2,
                    hls::stream<float>& out)
{
    float in1_val, in2_val;
l_vec_sub:
    for (int ii = 0; ii < N; ii++)
    {
        #pragma HLS pipeline
        in1_val = in1.read();
        in2_val = in2.read();
        float result = in1_val - in2_val;
        out << result;
    }
}

static void vec_sub(float in1[N],
                    hls::stream<float>& in2,
                    hls::stream<float>& out)
{
    static hls::stream<float> in1_stream("in1_stream_1");
    #pragma HLS STREAM variable=in1_stream depth=36

l_vec_sub_1:
    for (int ii = 0; ii < N; ii++)
    #pragma HLS pipeline
        in1_stream << in1[ii];

l_vec_sub_2:
    for (int ii = 0; ii < N; ii++)
    #pragma HLS pipeline
        out << in1_stream.read() - in2.read();
}

static void mac(float *p,
                hls::stream<float>& z_u,
                hls::stream<float>& result)
{
    static hls::stream<float> p_stream("p_stream_1");
    #pragma HLS STREAM variable=p_stream depth=68

    float z_u_local[N];

    std::cout << "\nmac:\n";

    // Read matrix P.
l_mac_1:
    for (int ii = 0; ii < N*N; ii++)
    #pragma HLS pipeline
        p_stream << p[ii];

    // Store z-u in local BRAM.
l_mac_2:
    for (int ii = 0; ii < N; ii++)
    #pragma HLS pipeline
        z_u_local[ii] = z_u.read();

    // Compute.
    float result_tmp = 0;
    float p_local = 0;

l_mac_3:
    for (int ii = 0; ii < N; ii++)
    {
l_mac_4:
        for (int jj = 0; jj < N; jj++)
        #pragma HLS pipeline
        {
            p_local = p_stream.read();

            float mult_tmp = p_local * z_u_local[jj];
            result_tmp += mult_tmp;

            if (jj + 1 == N)
            {
                result << result_tmp;

                std::cout << result_tmp << ", ";
                result_tmp = 0;
            }

        }
    }
    
    
}

static void vec_add(hls::stream<float>& mac_result,
                    float* q,
                    hls::stream<float>& out)
{
    static hls::stream<float> q_stream("q_stream_1");
     #pragma HLS STREAM variable=q_stream depth=36


l_vec_add_1:
    for (int ii = 0; ii < N; ii++)
    #pragma HLS pipeline
        q_stream << q[ii];

l_vec_add_2:
    for (int ii = 0; ii < N; ii++)
    {
    #pragma HLS pipeline
        float mac = mac_result.read();
        float q = q_stream.read();
        float result = mac + q;
        out << result;
    }
}

static void vec_add(hls::stream<float>& in_1,
                    hls::stream<float>& in_2,
                    hls::stream<float>& out)
{
    float in_1_val, in_2_val;
l_vec_add_3:
    for (int ii = 0; ii < N; ii++)
    {
    #pragma HLS pipeline
        in_1_val = in_1.read();
        in_2_val = in_2.read();
        out << in_1_val + in_2_val;
    }
}

static void x_update(hls::stream<float>& x_stream,
                     hls::stream<float>& z_stream,
                     hls::stream<float>& x_hat,
                     float alpha)

{
    float z_val, x_val;
    float reg_alpha = 1 - alpha;
    
l_x_update:
    for (int ii = 0; ii < N; ii++)
    {
        #pragma HLS pipeline
        x_val = x_stream.read();
        z_val = z_stream.read();
        float tmp_1 = alpha * x_val;
        float tmp_2 = reg_alpha * z_val;
        float result = tmp_1 + tmp_2; 
        x_hat << result; 
    }
  
}

static void shrinkage(hls::stream<float>& in1,
                      float rho,
                      hls::stream<float>& result)

{
l_shrinkage:
    for (int ii = 0; ii < N; ii++)
    {
    #pragma HLS pipeline
        float abs0 = 0, abs1 = 0;
        float in_val = in1.read();
        float sub0 = in_val - rho;
        float sub1 = -1 * in_val - rho;
        
        if (sub0 > 0)
            abs0 = sub0;
        if (sub1 > 0)
            abs1 = sub1;

        result << abs0 - abs1; 
    }
}

static void replicate_stream(hls::stream<float>& in,
                            hls::stream<float>& out1,
                            hls::stream<float>& out2)
{

l_rep_stream:
    for (int ii = 0; ii < N; ii++)
    {
    #pragma HLS pipeline
        float val = in.read();
        out1 << val;
        out2 << val;
    }    
}

static void replicate_stream(hls::stream<float>& in,
                            hls::stream<float>& out1,
                            hls::stream<float>& out2,
                            hls::stream<float>& out3)
{

l_rep_stream_1:
    for (int ii = 0; ii < N; ii++)
    {
    #pragma HLS pipeline
        float val = in.read();
        out1 << val;
        out2 << val;
        out3 << val;
    }    
}


static void flush_stream(hls::stream<float>&in)
{
    for (int i = 0; i < N; i++)
    #pragma HLS pipeline
        float tmp = in.read();
}

static void zero_init(hls::stream<float>&in)
{
    for (int i = 0; i < N; i++)
    #pragma HLS pipeline
        in << 0;
}

static void write_bram(hls::stream<float>& result,
                      float* mem)
{
l_write_bram:
    for (int i = 0; i < N; i++)
    #pragma HLS pipeline
        mem[i] = result.read();
}

static void write_mem(float* bram,
                      float* mem)
{
l_write_mem:
    for (int i = 0; i < N; i++)
    #pragma HLS pipeline
        mem[i] = bram[i];
}

extern "C" {
void krnl_bp(float* mat_p, 
             float* vec_q, 
             float* out,
             float rho, 
             float alpha
             ) 
{
    #pragma HLS INTERFACE m_axi port = mat_p bundle = gmem0
    #pragma HLS INTERFACE m_axi port = vec_q bundle = gmem1
    #pragma HLS INTERFACE m_axi port = out bundle = gmem2

    static float x_bram[N];
    static float mat_p_bram[N*N];
    static float vec_q_bram[N];

    static hls::stream<float> u_stream("u_stream_1");
    static hls::stream<float> u_copy_1_stream("u_copy_1_stream_1");
    static hls::stream<float> u_copy_2_stream("u_copy_2_stream_1");
    static hls::stream<float> u_copy_3_stream("u_copy_3_stream");
    static hls::stream<float> z_stream("z_stream_1");
    static hls::stream<float> z_old_stream("z_old_stream_1");
    static hls::stream<float> z_copy_1_stream("z_copy_1_stream_1");
    static hls::stream<float> z_copy_2_stream("z_copy_2_stream_1");
    static hls::stream<float> x_hat_stream("x_hat_stream_1");
    static hls::stream<float> x_hat_copy_1_stream("x_hat_copy_1_stream");
    static hls::stream<float> x_hat_copy_2_stream("x_hat_copy_2_stream");
    static hls::stream<float> x_hat_copy_3_stream("x_hat_copy_3_stream");
    static hls::stream<float> z_u_stream("z_u_stream_1");
    static hls::stream<float> mac_res_stream("mac_res_stream_1");
    static hls::stream<float> x_stream("x_stream_1");
    static hls::stream<float> x_hat_u_stream("x_u_stream_1");
    static hls::stream<float> shrinkage_stream("shrinkage_stream_1");
    static hls::stream<float> x_hat_z_stream("x_hat_z_stream_1");
    static hls::stream<float> u_update_stream("u_update_stream_1");

    #pragma HLS STREAM variable=u_stream depth=36
    #pragma HLS STREAM variable=u_copy_1_stream depth=36
    #pragma HLS STREAM variable=u_copy_2_stream depth=36
    #pragma HLS STREAM variable=u_copy_3_stream depth=36
    #pragma HLS STREAM variable=z_stream depth=36
    #pragma HLS STREAM variable=z_old_stream depth=36
    #pragma HLS STREAM variable=z_copy_1_stream depth=36
    #pragma HLS STREAM variable=z_copy_2_stream depth=36
    #pragma HLS STREAM variable=x_hat_stream depth=36
    #pragma HLS STREAM variable=x_hat_copy_1_stream depth=36
    #pragma HLS STREAM variable=x_hat_copy_2_stream depth=36
    #pragma HLS STREAM variable=x_hat_copy_3_stream depth=36
    #pragma HLS STREAM variable=z_u_stream depth=36
    #pragma HLS STREAM variable=mac_res_stream depth=36
    #pragma HLS STREAM variable=x_stream depth=36
    #pragma HLS STREAM variable=x_hat_u_stream depth=36
    #pragma HLS STREAM variable=shrinkage_stream depth=36
    #pragma HLS STREAM variable=x_hat_z_stream depth=36
    #pragma HLS STREAM variable=u_update_stream depth=36

//  #pragma HLS dataflow

// load matrix P and vector q into a BRAM. 
load_input(mat_p, mat_p_bram, N*N);
load_input(vec_q, vec_q_bram, N);

zero_init(u_stream);
zero_init(z_copy_2_stream);
zero_init(z_old_stream);

l_main:
   for (int i = 0; i < MAX_ITER; i++)
    {
   #pragma HLS pipeline
        replicate_stream(u_stream, u_copy_1_stream, u_copy_2_stream, u_copy_3_stream);
        // z - u
        vec_sub(z_copy_2_stream, u_copy_1_stream, z_u_stream);
        // p(z - u)
        mac(mat_p_bram, z_u_stream, mac_res_stream);
        // p(z - u) + q
        vec_add(mac_res_stream, vec_q_bram, x_stream);
        // x^ = alpha * x + (1 - alpha) * z
        x_update(x_stream, z_old_stream, x_hat_stream, alpha);
        replicate_stream(x_hat_stream, x_hat_copy_1_stream, x_hat_copy_2_stream, x_hat_copy_3_stream);
        write_bram(x_hat_copy_3_stream, x_bram);
        // x^ + u
        vec_add(x_hat_copy_1_stream, u_copy_2_stream, x_hat_u_stream);
        // shrinkage(x^+u, 1/p)
        shrinkage(x_hat_u_stream, rho, z_stream);
        replicate_stream(z_stream, z_old_stream, z_copy_1_stream, z_copy_2_stream);
        // x^ - z 
        vec_sub(x_hat_copy_2_stream, z_copy_1_stream, x_hat_z_stream);
        // u + (x^-z)
        vec_add(x_hat_z_stream, u_copy_3_stream, u_stream);
    }

    flush_stream(u_stream);
    flush_stream(z_old_stream);
    flush_stream(z_copy_2_stream);

    write_mem(x_bram, out);

    // TODO:
    //   *   after the loop finishes some of the fifos have still values in them --> figure out the order of replication
    //   *   1. write results to memory.
    //   *   2. make all the interfaces to compute functions AXI stream.
    //      3. implement early termination.
}
}
