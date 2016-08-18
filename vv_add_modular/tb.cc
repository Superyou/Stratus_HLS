//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#include "tb.h"
#include <esc.h>                // for the latency logging functions
#include <string>
#include <iostream>
//#include "training_data.h"

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
    sc_uint<64> din;
    //reset logic
    {
        HLS_DEFINE_PROTOCOL("mem reset");


        mem_write.mem_req_ready_i = 0;
        mem_write.mem_resp_valid_i = 0;
        mem_write.mem_resp_addr_i = 0;
        mem_write.mem_resp_tag_i = 0;
        mem_write.mem_resp_cmd_i = 0;
        mem_write.mem_resp_typ_i = 0;
        mem_write.mem_resp_data_i = 0;
        mem_write.mem_resp_has_data_i = 0;
        mem_write.mem_resp_has_data_i = 0;
        mem_write.mem_resp_store_data_i = 0;
        mem_write.mem_resp_nack_i = 0;
        mem_write.mem_resp_replay_i = 0;
        mem_resp.write(mem_write);



        wait();
    }


    while(1)
    {
        //recieve req from accelerator
        {
            HLS_DEFINE_PROTOCOL("mem request");
            mem_write.mem_req_ready_i = 1;
            mem_resp.write(mem_write);

            while(!mem_req.read().mem_req_valid_o)
            {
                wait();
            }
            Addr = mem_req.read().mem_req_addr_o;
            cmd = mem_req.read().mem_req_cmd_o;
            tag = mem_req.read().mem_req_tag_o;
            type = mem_req.read().mem_req_typ_o;
            din = mem_req.read().mem_req_data_o;
            mem_write.mem_req_ready_i = 0;
            mem_resp.write(mem_write);

            //wait();


        switch (cmd)
        {
        case 1:
        {

            //cout<< "store mem[ "<<Addr<<"] = "<<din<<endl;
            {
                HLS_DEFINE_PROTOCOL("mem response for store ");
                memory[Addr]=din;
                mem_write.mem_resp_addr_i = Addr;
                mem_write.mem_resp_cmd_i = cmd;
                mem_write.mem_resp_tag_i = tag;
                mem_write.mem_resp_typ_i = type;
                mem_write.mem_resp_data_i = value;
                mem_write.mem_resp_valid_i = 1;
                mem_write.mem_resp_store_data_i = din;

                mem_resp.write(mem_write);
                wait();
            }
            break;
        }
        case 0:
        {

            //cout<< "load mem[ "<<Addr<<"] = "<<value<<endl;
            {
                HLS_DEFINE_PROTOCOL("mem response for load");
                value = memory[Addr];
                mem_write.mem_resp_addr_i = Addr;
                mem_write.mem_resp_cmd_i = cmd;
                mem_write.mem_resp_tag_i = tag;
                mem_write.mem_resp_typ_i = type;
                mem_write.mem_resp_data_i = value;
                mem_write.mem_resp_valid_i = 1;
                mem_resp.write(mem_write);
                wait();
            }


            break;
        }
        }
        mem_write.mem_resp_valid_i = 0;
        mem_resp.write(mem_write);

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

        rst_out.write(1);

        tmp_write.cc_status_i = 0;
        tmp_write.cc_exception_i = 0;
        tmp_write.cc_host_id_i = 0;

        tmp_write.core_cmd_valid_i = 0;
        tmp_write.core_cmd_inst_funct_i = 0;
        tmp_write.core_cmd_inst_rs1_i = 0;
        tmp_write.core_cmd_inst_rs2_i = 0;

        tmp_write.core_cmd_inst_xd_i = 0;     //set if destination reg exist
        tmp_write.core_cmd_inst_xs1_i = 0;    //set if resource rs1 reg exist
        tmp_write.core_cmd_inst_xs2_i = 0;    //set if resource rs2 reg exist
        tmp_write.core_cmd_inst_rd_i = 0;
        tmp_write.core_cmd_inst_opcode_i = 0;     //custom instruction opcode may be used for several accerlerations
        tmp_write.core_cmd_rs1_i = 0;
        tmp_write.core_cmd_rs2_i = 0;

        rocc_in.write(tmp_write);

        wait();
    }
    rst_out.write(0);   // assert reset (active high)
    wait(2);

    // initialize the data in the memory
    for (int i=0;i<1000;++i)
        memory[i]=i;
    // store the time the first value was sent
    sample_sent_time = sc_time_stamp();


    // Write a set of values to the fir
    open_stimulus_file();       // Open the input data file
    bool eof = false;
    int cnt=0;
    while (eof == false)
    {

        sc_uint <64> value1 = read_stimulus_value(eof);
        sc_uint <64> value2 = read_stimulus_value(eof);
        //cout << "source value = " << value << endl;
        if (!eof)
        {
            cout<<"sending v1= "<<value1<<" v2= "<<value2<<endl;
            {
                HLS_DEFINE_PROTOCOL("cmd for the add operation");
                // have to wait until the cc_busy turn to be 0
                while(rocc_out.read().cc_busy_o){

                    wait();
                }
                //set cmd valid to 1
                tmp_write.core_cmd_valid_i = 1;
                // set cmd funct to 0x1 (defined myself)
                tmp_write.core_cmd_inst_funct_i = 0x1;
                //set register id (defined myself)
                tmp_write.core_cmd_inst_rs1_i = 0x55;
                tmp_write.core_cmd_inst_rs2_i = 0x25;


                tmp_write.core_cmd_inst_xd_i = 1;     //set if destination reg exist
                tmp_write.core_cmd_inst_xs1_i = 1;    //set if resource rs1 reg exist, only use rs1 this time
                tmp_write.core_cmd_inst_xs2_i = 1;    //set if resource rs2 reg exist
                tmp_write.core_cmd_inst_rd_i = 0x9;
                tmp_write.core_cmd_inst_opcode_i = 0x1;     //custom instruction opcode may be used for several accerlerations
                tmp_write.core_cmd_rs1_i = value1;
                tmp_write.core_cmd_rs2_i = value2;
                rocc_in.write(tmp_write);

                do{

                    wait();

                }while(!rocc_out.read().core_cmd_ready_o);
                tmp_write.core_cmd_valid_i = 0;
                rocc_in.write(tmp_write);
                wait();
            }

        }


    //cout << "source value = " << value << endl;

        sc_uint <64> store3 = read_stimulus_value(eof);
        sc_uint <64> store4 = read_stimulus_value(eof);

        if (!eof)
        {
            {
                HLS_DEFINE_PROTOCOL("cmd for the storage");
                // have to wait until the cc_busy turn to be 0
                while(rocc_out.read().cc_busy_o){

                    wait();
                }
                //set cmd valid to 1
                tmp_write.core_cmd_valid_i = 1;
                // set cmd funct to 0x1 (defined myself)
                tmp_write.core_cmd_inst_funct_i = 0x2;
                //set register id (defined myself)
                tmp_write.core_cmd_inst_rs1_i = 0x55;
                tmp_write.core_cmd_inst_rs2_i = 0x25;


                tmp_write.core_cmd_inst_xd_i = 1;     //set if destination reg exist
                tmp_write.core_cmd_inst_xs1_i = 1;    //set if resource rs1 reg exist, only use rs1 this time
                tmp_write.core_cmd_inst_xs2_i = 1;    //set if resource rs2 reg exist
                tmp_write.core_cmd_inst_rd_i = 0x49;
                tmp_write.core_cmd_inst_opcode_i = 0x1;     //custom instruction opcode may be used for several accerlerations

                tmp_write.core_cmd_rs2_i =  store4 ;
                tmp_write.core_cmd_rs1_i =  store3 ;
                rocc_in.write(tmp_write);
                cout<<"IN tb,send store= "<<store3<<" in address "<<store4<<endl;

                do{

                    wait();

                }while(!rocc_out.read().core_cmd_ready_o);
                tmp_write.core_cmd_valid_i = 0;
                rocc_in.write(tmp_write);
                wait();
            }
            cnt++;

        }

    }
    cout<< "finish storage"<<endl;
    {
        HLS_DEFINE_PROTOCOL("cmd fot the continuously load operation");
        // have to wait until the cc_busy turn to be 0
        while(rocc_out.read().cc_busy_o){

            wait();
        }
        //set cmd valid to 1
        tmp_write.core_cmd_valid_i = 1;
        // set cmd funct to 0x1 (defined myself)
        tmp_write.core_cmd_inst_funct_i = 0x3;
        //set register id (defined myself)

        tmp_write.core_cmd_inst_rs2_i = 0x25;


        tmp_write.core_cmd_inst_xd_i = 1;     //set if destination reg exist
        tmp_write.core_cmd_inst_xs1_i = 0;    //set if resource rs1 reg exist, only use rs1 this time
        tmp_write.core_cmd_inst_xs2_i = 1;    //set if resource rs2 reg exist
        tmp_write.core_cmd_inst_rd_i = 0x49;
        tmp_write.core_cmd_inst_opcode_i = 0x1;     //custom instruction opcode may be used for several accerlerations

        tmp_write.core_cmd_rs2_i =  0x0 ;
        rocc_in.write(tmp_write);

        do{

            wait();

        }while(!rocc_out.read().core_cmd_ready_o);
        tmp_write.core_cmd_valid_i = 0;
        rocc_in.write(tmp_write);
        wait();
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
    sc_uint<64> result;
    cout << "Sink reading all expected values from the design." << endl;
    //reset for the output
    sink_write.core_resp_ready_i = 0;
    sink_in.write(sink_write);
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
            sink_write.core_resp_ready_i = 1;
            sink_in.write(sink_write);

            while(!rocc_out.read().core_resp_valid_o)
            {
                wait();
            }
            result = rocc_out.read().core_resp_data_o;
            cout<<"IN tb, we got result = "<<result<<endl;
            wait();
            sink_write.core_resp_ready_i = 0;
            sink_in.write(sink_write);
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
sc_uint<64> tb::read_stimulus_value(bool & eof)
{
    sc_uint<64> value;
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
void tb::write_response_value(sc_uint<64> value)
{
    resp_file <<"0x"<<hex<< value << endl;
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
    sc_uint<64> value;

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

}
