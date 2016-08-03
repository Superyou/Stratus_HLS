//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#include "tb.h"
#include <esc.h>                // for the latency logging functions
#include <string>
#include <iostream>
#include "training_data.h"

//we assume that the array training_set is stroed in the cache at the begining of address0 (here is 0x35)
#define address0 0x35

////
// The mem thread pretend to be a cache part in the rocket V, it receive a request from the accelerator and send back the response to the accelerator, include data from training_data[10][TRAINING_SIZE]
////

void tb::mem()
{
    //define some internal variables to be used
    sc_uint<40> Addr;
    sc_uint<10> tag;
    sc_uint<5> cmd;
    sc_uint<3> type;
    sc_uint<64> value;
    //reset logic
    {
        HLS_DEFINE_PROTOCOL("mem reset");
        mem_req_ready_i.write(0);
        mem_resp_valid_i.write(0);
        mem_resp_addr_i.write(0);
        mem_resp_tag_i.write(0);
        mem_resp_cmd_i.write(0);
        mem_resp_typ_i.write(0);
        mem_resp_data_i.write(0);
        mem_resp_has_data_i.write(0);
        mem_resp_has_data_i.write(0);
        mem_resp_store_data_i.write(0);
        mem_resp_nack_i.write(0);
        mem_resp_replay_i.write(0);
        wait(2);
    }
    while(1)
    {
        //recieve req from accelerator
        {
            HLS_DEFINE_PROTOCOL("mem request");
            mem_req_ready_i.write(1);

            while(!mem_req_valid_o)
            {
                wait();
            }
            Addr = mem_req_addr_o.read();
            cmd = mem_req_cmd_o.read();
            tag = mem_req_tag_o.read();
            type = mem_req_typ_o.read();

            wait();
            mem_req_ready_i.write(0);


        }
        // get data from the training_data array
        int i =(int)(Addr-address0) / TRAINING_SIZE;
        int j= (int)(Addr-address0) - i* TRAINING_SIZE;
        value = training_data[i][j];

        //send resp back
        {
            HLS_DEFINE_PROTOCOL("mem response");
            mem_resp_addr_i.write(Addr);
            mem_resp_cmd_i.write(cmd);
            mem_resp_tag_i.write(tag);
            mem_resp_typ_i.write(type);
            mem_resp_data_i.write(value);
            mem_resp_valid_i.write(1);

            wait();
        }
    }

}

////
// The source thread reads data from a file and sends it to the design
////

void tb::source()
{


    //reset logic
    {
        HLS_DEFINE_PROTOCOL("reset");

        rst_out.write(0);

        cc_status_i.write(0);
        cc_exception_i.write(0);
        cc_host_id_i.write(0);

        core_cmd_valid_i.write(0);
        core_cmd_inst_funct_i.write(0);
        core_cmd_inst_rs1_i.write(0);
        core_cmd_inst_rs2_i.write(0);

        core_cmd_inst_xd_i.write(0);     //set if destination reg exist
        core_cmd_inst_xs1_i.write(0);    //set if resource rs1 reg exist
        core_cmd_inst_xs2_i.write(0);    //set if resource rs2 reg exist
        core_cmd_inst_rd_i.write(0);
        core_cmd_inst_opcode_i.write(0);     //custom instruction opcode may be used for several accerlerations
        core_cmd_rs1_i.write(0);
        core_cmd_rs2_i.write(0);


        wait(2);
    }
    rst_out.write(1);
    wait();
             // assert reset (active low)

    // store the time the first value was sent
    sample_sent_time = sc_time_stamp();

    // only use this protocol if running the using memory interface version

    //set opcode =2  to let the accelerator store those parameter from training_data to training_set first
    {
        HLS_DEFINE_PROTOCOL("First pass the Addr to the Accelerator");

        // have to wait until the cc_busy turn to be 0
        while(cc_busy_o){
            wait();
        }
        //set cmd valid to 1
        core_cmd_valid_i.write(1);
        // set cmd funct to 0x1 (defined myself)
        core_cmd_inst_funct_i.write(0x1);
        //set register id (defined myself)
        core_cmd_inst_rs1_i.write(0x5);


        core_cmd_inst_xd_i.write(0);     //set if destination reg exist
        core_cmd_inst_xs1_i.write(1);    //set if resource rs1 reg exist, only use rs1 this time
        core_cmd_inst_xs2_i.write(0);    //set if resource rs2 reg exist

        //set opcode to 0x2 to prefetch the parameters
        core_cmd_inst_opcode_i.write(0x2);     //custom instruction opcode may be used for several accerlerations
        core_cmd_rs1_i.write(address0);


        do{

            wait();

        }while(!core_cmd_ready_o);
        core_cmd_valid_i.write(0);
        wait();
    }


    cout<<"finish Addr"<<endl;



    // Write a set of values to the fir
    open_stimulus_file();       // Open the input data file
    bool eof = false;
    while (eof == false)
    {
        input_t value = read_stimulus_value(eof);
        sc_uint <64> vv = (sc_uint<64>) value;
        //cout << "source value = " << value << endl;
        if (!eof)
        {
            {
                HLS_DEFINE_PROTOCOL("Input");
                // have to wait until the cc_busy turn to be 0
                while(cc_busy_o){

                    wait();
                }
                //set cmd valid to 1
                core_cmd_valid_i.write(1);
                // set cmd funct to 0x1 (defined myself)
                core_cmd_inst_funct_i.write(0x1);
                //set register id (defined myself)
                core_cmd_inst_rs1_i.write(0x55);


                core_cmd_inst_xd_i.write(1);     //set if destination reg exist
                core_cmd_inst_xs1_i.write(1);    //set if resource rs1 reg exist, only use rs1 this time
                core_cmd_inst_xs2_i.write(0);    //set if resource rs2 reg exist
                core_cmd_inst_rd_i.write(0x9);
                core_cmd_inst_opcode_i.write(0x1);     //custom instruction opcode may be used for several accerlerations
                core_cmd_rs1_i.write(vv);

                do{

                    wait();

                }while(!core_cmd_ready_o);
                core_cmd_valid_i.write(0);
                wait();
            }

        }
    }

    cout << "Finished reading all values" << endl;
    // If this reaches the timeout it is an error
    wait(10000000);
    close_stimulus_file();
    cerr << name() << " Error! Source timed out!" << endl;
    esc_stop();
}

////
// The sink thread reads all the expected values from the design
////

void tb::sink()
{
    output_t result;
    cout << "Sink reading all expected values from the design." << endl;
    //reset for the output
    core_resp_ready_i.write(0);
    wait();                     // to synchronize with reset

    open_response_file();       // Open the output data file

    // read data values until we have read the number that are
    // in the golden file
    int n_samples = count_golden_file();
    cout << "There are " << n_samples << " samples" << endl;
    for (unsigned long i = 0; i < n_samples; i++)
    {
        // wait to receive the response values
        {
            HLS_DEFINE_PROTOCOL("read response");
            core_resp_ready_i.write(1);

            while(!core_resp_valid_o)
            {
                wait();
            }
            result = core_resp_data_o.read();
            wait();
            core_resp_ready_i.write(0);
        }


        write_response_value(result);    // write to response file
        //if (i == 0)
        cout << "Latency for sample " << i << " is "
             << clock_cycle(sc_time_stamp() - sample_sent_time) << endl;
    }
    cout << "Testbench sink thread read " << n_samples << " values." << endl;

    close_response_file();
    esc_stop();
}

////
// Open the stimulus file
////
void tb::open_stimulus_file(const char *_name)
{
    const char *name = (_name == NULL ? "stimulus.dat" : _name);

    stim_file.open(name);
    if (stim_file.fail())
    {
        cerr << "Couldn't open " << name << " for reading." << endl;
        exit(0);
    }
}

////
// Read the next value from the stimulus file
// Set eof = true if there are no more values in the file
////
input_t tb::read_stimulus_value(bool & eof)
{
    input_t value;
    stim_file >> std::ws;
    eof = stim_file.eof();
    if (!eof)
    {
        stim_file >> value;
        eof = (stim_file.eof());
    }
    return value;
}

////
// Close the stimulus file
////
void tb::close_stimulus_file()
{
    stim_file.close();
}

////
// Open the response file
////
void tb::open_response_file(const char *_name)
{
    const char *name = (_name == NULL ? "response.dat" : _name);

    // put output file in appropriate directory in bdw_work
    std::string filename = getenv("BDW_SIM_CONFIG_DIR");
    filename += "/";
    filename += name;
    resp_file.open(filename.c_str());
    if (resp_file.fail())
    {
        cerr << "Couldn't open " << filename << " for writing." << endl;
        exit(0);
    }
}

////
// Write a value to the response file
////
void tb::write_response_value(output_t value)
{
    resp_file << value << endl;
}

////
// Close the response file
////
void tb::close_response_file()
{
    resp_file.close();
}

////
// Count the number of values in the golden file
////
int tb::count_golden_file(const char *_name)
{
    const char *name = (_name == NULL ? "golden.dat" : _name);
    ifstream golden_file;       // File stream containing expected values
    unsigned long i;
    output_t value;

    golden_file.open(name);
    if (golden_file.fail())
    {
        cerr << "Couldn't open golden file " << name << "." << endl;
        exit(0);
    }

    golden_file >> std::ws;     // flush any white space
    for (i = 0; !golden_file.eof(); i++)
    {
        golden_file >> value;
        golden_file >> std::ws; // flush any white space
    }

    golden_file.close();

    return i;
}

////
// Convert a time in simulation time units to clock cycles
////
//int tb::clock_cycle(sc_time time)
double tb::clock_cycle(sc_time time)
{
    sc_clock *clk_p = DCAST < sc_clock * >(clk.get_interface());
    sc_time clock_period = clk_p->period(); // get period from the sc_clock object.
    return (int) (time / clock_period);
    //cout << "Time=" << (int) (time / clock_period) << endl;
    //return esc_normalize_to_ps(time)/esc_normalize_to_ps(clock_period);

}
