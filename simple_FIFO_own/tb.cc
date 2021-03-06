//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#include "tb.h"
#include <esc.h>                // for the latency logging functions
#include <string>
#include <iostream>


////
// The mem thread pretend to be a cache part in the rocket V, it receive a request from the accelerator and send back the response to the accelerator, include data from training_data[10][TRAINING_SIZE]
////

////
// The source thread reads data from a file and sends it to the design
////

void tb::source()
{

    rst_out.write(1);   // assert reset (active high)
    din_empty.write(1);
    wait(2);
    rst_out.write(0);
    din_empty.write(0);

    //wait();


    // store the time the first value was sent
    sample_sent_time = sc_time_stamp();


    // Write a set of values to the fir
    open_stimulus_file();       // Open the input data file
    bool eof = false;

    while (eof == false)
    {

        sc_uint <32> value = read_stimulus_value(eof);
        //cout << "source value = " << value << endl;
        if (!eof)
        {
            //din.put(value);
            din_data.write(value);
            din_empty.write(0);
            do{
                wait();
            }
            while(!din_read);
        }

    }
    din_empty.write(1);
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
    dout_full.write(0);
    wait();                     // to synchronize with reset

    open_response_file();       // Open the output data file

    // read data values until we have read the number that are
    // in the golden file
    int n_samples = count_golden_file();
    cout << "There are " << n_samples << " samples" << endl;
    for (unsigned long i = 0; i < n_samples; i++)
    {
        while(!dout_write)
            wait();
        input_t result = dout_data.read();
        write_response_value(result);    // write to response file
        wait();
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

}
