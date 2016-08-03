//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#include "tb.h"
#include "typedefs.h"
#include <iostream>
#include <string>

/*
#define debug cout

#ifdef DEBUG
#define debug cout
#else
#define debug if(0) cout
#endif
*/

tb::~tb()  //Destructor
{
    tb_infile.close();
    tb_outfile_c.close();
} //End of Destructor



void tb::tb_source()
{

    //Declare and define internal variables 
    tb_dout.reset();
	rst.write(0);
	wait(2);
	rst.write(1);
	wait();

    cout<<"prepare to open files."<<endl;

    sample_sent_time = sc_time_stamp();

    open_stimulus_file();       // Open the input data file


    bool eof = false;
    for( unsigned long i = 0; eof == false; i++ )
    {
        DT1 value = read_stimulus_value( eof );

        cout<<"source value ="<<value<<endl;
        if (eof == false)
        {
            tb_dout.put( value );
        }
    }

	cout << "Finished reading all values" << endl;
	wait(10000000);
    close_stimulus_file();
    cerr << name() << " Error! Source timed out!" << endl;
    esc_stop();
}

void tb::tb_sink()
{


	cout << "Sink reading all expected values from the design." << endl;
    tb_din.reset();
    wait();                     // to synchronize with reset

    open_response_file();       // Open the output data file

    // read data values until we have read the number that are
    // in the golden file
    int n_samples = count_golden_file();
    cout << "There are " << n_samples << " samples" << endl;
    for (unsigned long i = 0; i < n_samples; i++)
    {
        DT2 inVal = tb_din.get();
        write_response_value(inVal);    // write to response file   
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

    tb_infile.open(name);
    if (tb_infile.fail())
    {
        cerr << "Couldn't open " << name << " for reading." << endl;
        exit(0);
    }
}

////
// Read the next value from the stimulus file
// Set eof = true if there are no more values in the file
////
DT1 tb::read_stimulus_value(bool & eof)
{
    DT1 value;
    tb_infile >> std::ws;
    eof = tb_infile.eof();
    if (!eof)
    {
        tb_infile >> value;
        eof = (tb_infile.eof());
    }
    return value;
}

////
// Close the stimulus file
////
void tb::close_stimulus_file()
{
    tb_infile.close();
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
    tb_outfile_c.open(filename.c_str());
    if (tb_outfile_c.fail())
    {
        cerr << "Couldn't open " << filename << " for writing." << endl;
        exit(0);
    }
}

////
// Write a value to the response file
////
void tb::write_response_value(DT2 value)
{
    tb_outfile_c << value << endl;
}

////
// Close the response file
////
void tb::close_response_file()
{
    tb_outfile_c.close();
}

////
// Count the number of values in the golden file
////
int tb::count_golden_file(const char *_name)
{
    const char *name = (_name == NULL ? "golden.dat" : _name);
    ifstream golden_file;       // File stream containing expected values
    unsigned long i;
    DT2 value;

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

