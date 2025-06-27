#include <iostream>
#include <stdint.h>
#include <hls_stream.h>
#include <cmath>

#define N 8
#define FIFO_DEPTH  N + 4
#define MAX_ITER 32

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
    int count_written = 0;  // Track values written
l_vec_sub:
    for (int ii = 0; ii < N; ii++)
    {
        #pragma HLS pipeline
        if (!in1.empty() && !in2.empty()) {
            float in1_val = in1.read();
            float in2_val = in2.read();
            float result = in1_val - in2_val;
            out.write(result);
            count_written++;
            std::cout << "vec_sub: Wrote to z_u_stream[" << ii << "] = " << result << std::endl;
        } else {
            out.write(0);  // Ensure `mac()` gets exactly `N` values
            std::cout << "vec_sub: Missing input at index " << ii << ", writing zero" << std::endl;
        }
    }
    std::cout << "vec_sub: Total values written to z_u_stream = " << count_written << std::endl;
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
    #pragma HLS STREAM variable=p_stream depth=256  // Increased depth to prevent stalls

    float z_u_local[N];
    float p_local = 0;

    std::cout << "\nStarting mac computation...\n";

    for (int ii = 0; ii < N * N; ii++) {
        #pragma HLS pipeline
        p_stream.write(p[ii]);
        std::cout << "p_stream write: " << p[ii] << " at index " << ii << std::endl;
    }

    int z_u_count = 0;
    for (int ii = 0; ii < N; ii++) {
        #pragma HLS pipeline
        if (!z_u.empty()) {  // Ensure values exist
            z_u_local[ii] = z_u.read();
            std::cout << "z_u read: " << z_u_local[ii] << " at index " << ii << std::endl;
            z_u_count++;
        } else {
            z_u_local[ii] = 0;  // Prevent stall by providing a default value
            std::cout << "z_u empty at index " << ii << ", using 0" << std::endl;
        }
    }
    std::cout << "mac: Total available values in z_u_stream before reading: " << z_u_count << std::endl;

    for (int ii = 0; ii < N; ii++) {
        float result_tmp = 0;

        for (int jj = 0; jj < N; jj++) {
            #pragma HLS pipeline
            if (!p_stream.empty()) {  // Ensure p_stream has data before reading
                p_local = p_stream.read();
                std::cout << "p_stream read: " << p_local << " at index " << ii << ", " << jj << std::endl;

                float mult_tmp = p_local * z_u_local[jj];
                result_tmp += mult_tmp;
            } else {
                std::cout << "p_stream empty at index " << ii << ", " << jj << " using 0" << std::endl;
            }
        }

        if (!result.full()) {  // Ensure there's space to write
            result.write(result_tmp);
            std::cout << "Result written: " << result_tmp << " at index " << ii << std::endl;
        } else {
            std::cout << " mac_res_stream full at index " << ii << "! Possible stall cause." << std::endl;
        }
    }

    std::cout << "mac computation complete.\n";
}

static void vec_add(hls::stream<float>& mac_result,
                    float* q,
                    hls::stream<float>& out)
{
    static hls::stream<float> q_stream("q_stream_1");
    #pragma HLS STREAM variable=q_stream depth=36
    // #pragma HLS dataflow

    std::cout << "Before vec_add, checking mac_result size..." << std::endl;
    int mac_count = 0;
    for (int ii = 0; ii < N; ii++) {
        if (!mac_result.empty()) {
            float temp = mac_result.read();
            mac_result << temp;
            std::cout << "mac_result[" << ii << "] = " << temp << std::endl;
            mac_count++;
        } else {
            std::cout << "mac_result is empty at index " << ii << std::endl;
        }
    }
    std::cout << "Total values in mac_result before vec_add: " << mac_count << std::endl;

    // Load q into stream
    for (int ii = 0; ii < N; ii++) {
        #pragma HLS pipeline
        q_stream.write(q[ii]);
    }

    // Perform vector addition
    for (int ii = 0; ii < N; ii++) {
        #pragma HLS pipeline
        if (!mac_result.empty() && !q_stream.empty()) {
            float mac = mac_result.read();
            float q_val = q_stream.read();
            float result = mac + q_val;
            out.write(result);
            std::cout << "vec_add: Wrote " << result << " to out at index " << ii << std::endl;
        } else {
            std::cout << "vec_add: Stream empty at index " << ii << ", writing zero" << std::endl;
            out.write(0);
        }
    }
}



static void vec_add(hls::stream<float>& in_1,
                    hls::stream<float>& in_2,
                    hls::stream<float>& out)
{
    #pragma HLS pipeline
    for (int ii = 0; ii < N; ii++) {
        //if (!in_1.empty() && !in_2.empty() && !out.full()) {
            float in_1_val = in_1.read();
            float in_2_val = in_2.read();
            out.write(in_1_val + in_2_val);
        //}
    }
}

static void x_update(hls::stream<float>& x_stream,
                     hls::stream<float>& z_stream,
                     hls::stream<float>& x_hat,
                     float alpha)
{
    float z_val, x_val;
    float reg_alpha = 1 - alpha;

    std::cout << "Before x_update, checking x_stream size..." << std::endl;
    int x_count = 0;
    for (int ii = 0; ii < N; ii++) {
        if (!x_stream.empty()) {
            float temp = x_stream.read();
            x_stream << temp;
            std::cout << "x_stream[" << ii << "] = " << temp << std::endl;
            x_count++;
        } else {
            std::cout << "x_stream is empty at index " << ii << std::endl;
        }
    }
    std::cout << "Total values in x_stream before x_update: " << x_count << std::endl;

    for (int ii = 0; ii < N; ii++) {
        #pragma HLS pipeline
        if (!x_stream.empty() && !z_stream.empty()) {  // Prevent stall
            x_val = x_stream.read();
            z_val = z_stream.read();
            float result = alpha * x_val + reg_alpha * z_val;
            x_hat.write(result);
            std::cout << "x_update: Wrote " << result << " to x_hat at index " << ii << std::endl;
        } else {
            std::cout << "x_update: Stream empty at index " << ii << ", writing zero" << std::endl;
            x_hat.write(0);
        }
    }

    std::cout << "x_update is done" << std::endl;
}



static void shrinkage(hls::stream<float>& in1,
                      float rho,
                      hls::stream<float>& result)

{
l_shrinkage:
    for (int ii = 0; ii < N; ii++)
    {
    #pragma HLS pipeline
    //if(!in1.empty() && !result.full()){
        float abs0 = 0, abs1 = 0;
        float in_val = in1.read();
        float sub0 = in_val - rho;
        float sub1 = -1 * in_val - rho;
        
        if (sub0 > 0)
            abs0 = sub0;
        if (sub1 > 0)
            abs1 = sub1;

        result.write(abs0 - abs1); 
    //}
    //else{
    //    std::cout << "empty at " << ii << std::endl;
    //}
    }
}

static void replicate_stream(hls::stream<float>& in,
                            hls::stream<float>& out1,
                            hls::stream<float>& out2)
{
l_rep_stream:
    for (int ii = 0; ii < N; ii++)
    {
        std::cout << "before pragma is done" << std::endl;
        #pragma HLS pipeline
        if (!in.empty()) {
            std::cout << "after pragma is done" << std::endl;
            float val = in.read();
            std::cout << "in reading is done: " << val << std::endl;
            out1 << val;
            std::cout << "out1 is done" << std::endl;
            out2 << val;
            std::cout << "out2 is done" << std::endl;
        }
        else {
            std::cout << "replicate_stream: Stream empty at index " << ii << std::endl;
        }
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
        std::cout << "before pragma is done" << std::endl;
        #pragma HLS pipeline
        if (!in.empty()) {  // Ensure the stream is not empty before reading
            std::cout << "after pragma is done" << std::endl;
            float val = in.read();
            std::cout << "in read is done: " << val << std::endl;
            out1 << val;
            std::cout << "out1 is done" << std::endl;
            out2 << val;
            std::cout << "out2 is done" << std::endl;
            out3 << val;
            std::cout << "out3 is done" << std::endl;
        }
        else {
            std::cout << "replicate_stream: Stream empty at index " << ii << std::endl;
        }
    }
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
    for (int i = 0; i < N; i++) {
        #pragma HLS pipeline
        //if (!result.empty()) {
            mem[i] = result.read();
        //} else {
        //    std::cout << "write_bram: Empty stream at index " << i << std::endl;
        //}
    }
}

static void write_mem(float* bram,
                      float* mem)
{
l_write_mem:
    for (int i = 0; i < N; i++)
    #pragma HLS pipeline
        mem[i] = bram[i];
}

static void flush_stream(hls::stream<float>&in)
{
    for (int i = 0; i < N; i++)
    #pragma HLS pipeline
    //if(!in.empty()){
        float tmp = in.read();
    //}
}

float ABSTOL = 1e-4;
float RELTOL = 1e-2;
// float eps_pri_val = 0;
// float* eps_pri = &eps_pri_val;
// float norm_x = 0;
// float norm_z = 0;
// static void compute_eps_pri(int N, float norm_x, float norm_z, float* eps_pri);
void compute_eps_pri(float norm_x, float norm_z, float* eps_pri)
{
    *eps_pri = sqrt((float)N) * ABSTOL + RELTOL * std::max(norm_x, norm_z);
}
void compute_eps_dual(float norm_u, float rho, float* eps_dual){
    *eps_dual = sqrt((float)N) * ABSTOL + RELTOL * norm_u * rho;
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

    float r_norm = 0, s_norm = 0;
    float eps_pri = 0, eps_dual = 0;
    float norm_x = 0, norm_z = 0, norm_u = 0;

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

    #pragma HLS STREAM variable=u_stream depth=128
    #pragma HLS STREAM variable=u_copy_1_stream depth=128
    #pragma HLS STREAM variable=u_copy_2_stream depth=128
    #pragma HLS STREAM variable=u_copy_3_stream depth=128
    #pragma HLS STREAM variable=z_stream depth=128
    #pragma HLS STREAM variable=z_old_stream depth=128
    #pragma HLS STREAM variable=z_copy_1_stream depth=128
    #pragma HLS STREAM variable=z_copy_2_stream depth=128
    #pragma HLS STREAM variable=x_hat_stream depth=128
    #pragma HLS STREAM variable=x_hat_copy_1_stream depth=128
    #pragma HLS STREAM variable=x_hat_copy_2_stream depth=128
    #pragma HLS STREAM variable=x_hat_copy_3_stream depth=128
    #pragma HLS STREAM variable=z_u_stream depth=128
    #pragma HLS STREAM variable=mac_res_stream depth=256
    #pragma HLS STREAM variable=x_stream depth=128
    #pragma HLS STREAM variable=x_hat_u_stream depth=128
    #pragma HLS STREAM variable=shrinkage_stream depth=128
    #pragma HLS STREAM variable=x_hat_z_stream depth=128
    #pragma HLS STREAM variable=u_update_stream depth=128

    // Load matrix P and vector q into a BRAM. 
    load_input(mat_p, mat_p_bram, N*N);
    load_input(vec_q, vec_q_bram, N);

    zero_init(u_stream);
    zero_init(z_copy_2_stream);
    zero_init(z_old_stream);

    // Variable to track early termination
    // bool terminate_early = false;

    l_main:
    for (int i = 0; i < MAX_ITER; i++) {
       //#pragma HLS dataflow
        // if (terminate_early) break;

        //#pragma HLS pipeline
        std::cout << "Are we here?" << std::endl;
        
        replicate_stream(u_stream, u_copy_1_stream, u_copy_2_stream, u_copy_3_stream);
        std::cout << "RS is done" <<std::endl;
        // z - u
        //checks <<
        std::cout << "Before vec_sub, checking z_u_stream size..." << std::endl;
int z_u_count = 0;
for (int ii = 0; ii < N; ii++) {
    if (!z_u_stream.empty()) {
        float temp = z_u_stream.read();
        z_u_stream.write(temp);  // Re-insert to avoid consuming the value
        std::cout << "z_u_stream[" << ii << "] = " << temp << std::endl;
        z_u_count++;
    }
}
std::cout << "Total values in z_u_stream before vec_sub: " << z_u_count << std::endl;


// Checks ^
        vec_sub(z_copy_2_stream, u_copy_1_stream, z_u_stream);
        std::cout << "VS is done" <<std::endl;
        // p(z - u)
        mac(mat_p_bram, z_u_stream, mac_res_stream);
        std::cout << "Mac is done" <<std::endl;
        // p(z - u) + q
        //check <<
        std::cout << "Before vec_add, checking mac_res_stream size..." << std::endl;
int mac_res_count = 0;
for (int ii = 0; ii < N; ii++) {
    if (!mac_res_stream.empty()) {
        float temp = mac_res_stream.read();
        mac_res_stream.write(temp);  // Re-insert value
        std::cout << "mac_res_stream[" << ii << "] = " << temp << std::endl;
        mac_res_count++;
    }
}
std::cout << "Total values in mac_res_stream before vec_add: " << mac_res_count << std::endl;
//check^^
        vec_add(mac_res_stream, vec_q_bram, x_stream);
        std::cout << "VA is done" <<std::endl;
        // x^ = alpha * x + (1 - alpha) * z
        x_update(x_stream, z_old_stream, x_hat_stream, alpha);
        std::cout << "XU is done" <<std::endl;
        replicate_stream(x_hat_stream, x_hat_copy_1_stream, x_hat_copy_2_stream, x_hat_copy_3_stream);
        std::cout << "RS2 is done" <<std::endl;
        write_bram(x_hat_copy_3_stream, x_bram);
        std::cout << "WB is done" <<std::endl;
        // x^ + u
        vec_add(x_hat_copy_1_stream, u_copy_2_stream, x_hat_u_stream);
        std::cout << "VA2 is done" <<std::endl;
        // shrinkage(x^+u, 1/p)
        shrinkage(x_hat_u_stream, rho, z_stream);
        std::cout << "S is done" <<std::endl;
        replicate_stream(z_stream, z_old_stream, z_copy_1_stream, z_copy_2_stream);
        std::cout << "RS3 is done" <<std::endl;
        // x^ - z 
        vec_sub(x_hat_copy_2_stream, z_copy_1_stream, x_hat_z_stream);
        std::cout << "VS2 is done" <<std::endl;
        // u + (x^-z)
        vec_add(x_hat_z_stream, u_copy_3_stream, u_stream);
        std::cout << "VA3 is done" <<std::endl;
        //Terminate Condition Jan 20 2025
        // float ABSTOL = 1e-4;
        // float RELTOL = 1e-2;
        // float r_norm = 0, s_norm = 0;
        // float eps_pri = 0, eps_dual = 0;
        // float norm_x = 0, norm_z = 0, norm_u = 0;
        r_norm = 0.0;
        s_norm = 0.0;
        norm_x = 0.0;
        norm_z = 0.0;
        norm_u = 0.0;
        for (int ii = 0; ii < N; ii++) {
            float x_val = x_bram[ii];
            // float z_val = z_copy_2_stream.read();
            float z_val = 0.0, u_val = 0.0, z_old_val = 0.0;
            // float u_val = u_stream.read();
            if(!z_copy_2_stream.empty()){
                z_val = (!z_copy_2_stream.empty()) ? z_copy_2_stream.read() : 0.0;
                z_copy_2_stream.write(z_val);
                //Add a line that adds the stream back in
            }
            else{
                std::cout<<"Empty at " << ii << std::endl;
            }
            if(!u_stream.empty()){
                u_val = u_stream.read();
                u_stream.write(u_val);
                //Add a line that adds the stream back in
            }
            else{
                std::cout<<"Empty at " << ii << std::endl;
            }
            if(!z_old_stream.empty()){
                z_old_val = z_old_stream.read();
                z_old_stream.write(z_old_val);
                //Add a line that adds the stream back in
            }
            else{
                std::cout<<"Empty at " << ii << std::endl;
            }
            r_norm += pow(x_val - z_val, 2);
            s_norm += pow(-rho * (z_val - z_old_val), 2);
            norm_x += pow(x_val, 2);
            norm_z += pow(z_val, 2);
            norm_u += pow(u_val, 2);
            std::cout << "Loop is at" << ii << std::endl;
        }
        std::cout << "Loop is done" <<std::endl;
        r_norm = sqrt(r_norm);
        std::cout << r_norm <<std::endl;
        s_norm = sqrt(s_norm);
        std::cout << s_norm <<std::endl;
        norm_x = sqrt(norm_x);
        std::cout << norm_x <<std::endl;
        norm_z = sqrt(norm_z);
        std::cout << norm_z <<std::endl;
        norm_u = sqrt(norm_u);
        std::cout << norm_u <<std::endl;
        float eps_pri;
        compute_eps_pri(norm_x, norm_z, &eps_pri);
        //std::cout << eps_pri <<std::endl;
        compute_eps_dual(norm_u, rho, &eps_dual);
        //eps_dual = sqrt(N) * ABSTOL + RELTOL * norm_u * rho;
        std::cout << eps_dual <<std::endl;

        if (r_norm < eps_pri && s_norm < eps_dual) {
            std::cout << "The break condition has been met" <<std::endl;
            break;
        }
        else{
            std::cout << "continuing, i is currently " << i << std::endl;
            continue;
        }
    }
    std::cout << "We're out of the loop?" << std::endl;
    flush_stream(u_stream);
    flush_stream(z_old_stream);
    flush_stream(z_copy_2_stream);

    write_mem(x_bram, out);
}
}