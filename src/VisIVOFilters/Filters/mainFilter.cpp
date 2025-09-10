#include <cstdlib>
#include <cstring>
#include <iostream>
#include <sstream>
#include <string>
#include <chrono>
#include <vector>
#include <map>
#include <omp.h>
#include "parametersparser.h"
#include "startFilter.h"
#include "vstable.h" // <--- ADD THIS LINE

#ifdef VSMPI
#pragma message "MPI-PARALLEL compilation" // Setting up the runtime environment (MPI or serial).
#include "mpi.h"
#else
#pragma message "SERIAL compilation"
#endif

int main(int argc, char *argv[])
{
#ifdef VSMPI
    // std::cout<<"VSMPI"<<std::endl;
#endif
    int size=1,rank=0;
    std::string paramFilename;
    std::stringstream commandParametersSStream;
    std::map<std::string, std::string> appParameters;
    std::map<std::string, std::string>::iterator iter;
    bool paramFileGiven=false;

#ifdef VSMPI
// parallel environment for all processes
    MPI_Init(NULL, NULL);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    // if (rank == 0)
    //    std::cout << "MPI is enabled!" << std::endl;
#else
    std::cout << "MPI is NOT enabled!" << std::endl;
    
#endif
    //Parameter Parsing Logic:
  // if (rank == 0) // <--- ADD THIS LINE
//{       
    if(argc==2)
    {
        paramFileGiven=true;
        std::string argStr;
        argStr.assign(argv[1]);
        if (argStr=="--op"||argStr=="-op")
            paramFileGiven=false;
        if (argStr=="-help"||argStr=="--help")

            paramFileGiven=false;
        if(paramFileGiven)
            paramFilename=argStr;
    }
    //main code directly uses the ParametersParser class. 
    //It represent myparser,which encapsulates the complex parsing logic.
    if(paramFileGiven)
    {
        ParametersParser myparser(paramFilename,1);
        appParameters=myparser.getParameters();
    }
    else
    {
        bool fileIsAtTheEnd=true;
        for (int i=1;i<argc;i++)
        {
            std::string argStr;
            argStr.assign(argv[i]);
            if (argStr=="--file"||argStr=="-file")
            {
                fileIsAtTheEnd=false;
                break;
            }
            if (argStr=="--op" || argStr=="-op")
            {
                std::string argStrop;
                if(i+1>=argc)
                {
                    std::cerr<<"Invalid options"<<std::endl;
                    exit(1);
                }
                argStrop.assign(argv[i+1]);
                if(argStrop=="interpolate" ||argStrop=="AHFstep" ||
                   argStrop=="merge" ||argStrop=="visualop" ||argStrop=="append")
                {
                    fileIsAtTheEnd=false;
                    break;
                }
            }
        }

        if (fileIsAtTheEnd)
        {
            for (int i=1;i<argc-1;i++) commandParametersSStream<< argv[i]<<" ";
            commandParametersSStream<<"--file "<< argv[argc-1]<<" ";
        }
        else
            for (int i=1;i<argc;i++) commandParametersSStream<< argv[i]<<" ";

        ParametersParser myparser(commandParametersSStream.str());
        appParameters=myparser.getParameters();
    }
    //MPI Sub-Communicator Management (MPI only)
    //It creates a new MPI communicator (NEW_COMM) containing only selected ranks.
    int MpiSize=size;  //allow available MPI processes(mpisize parameter)to perform the main computation.
    iter=appParameters.find("mpisize");
    if(iter != appParameters.end())
        MpiSize=atoi(iter->second.c_str());
    if(MpiSize>size) MpiSize=size;

#ifdef VSMPI
    int *ranks = new int[MpiSize];
    for(int i=0;i<MpiSize;i++) ranks[i]=i;

    
    //printf(" MpiSize %d \n", MpiSize);
    //Directly interacts with MPI group and communicator functions 
    MPI_Group origGroup, newGroup;
    MPI_Comm NEW_COMM;
    MPI_Comm_group(MPI_COMM_WORLD, &origGroup);
    MPI_Group_incl(origGroup, MpiSize, ranks, &newGroup);
    MPI_Comm_create(MPI_COMM_WORLD, newGroup, &NEW_COMM);
  
    int trank, tsize;
    MPI_Comm_rank(MPI_COMM_WORLD, &trank);
    MPI_Comm_size(MPI_COMM_WORLD, &tsize);
    
    auto start = std::chrono::high_resolution_clock::now();
    MPI_Barrier(MPI_COMM_WORLD);
    
    startFilter startFilter(appParameters, NEW_COMM);
    
    
    MPI_Barrier(MPI_COMM_WORLD);
    auto end = std::chrono::high_resolution_clock::now();

    MPI_Finalize();

    if (rank == 0)
    {
        // Calculate the duration
        std::chrono::duration<double> duration = end - start;
        int num_threads=omp_get_max_threads();
        std::cout << "# of MPI Processes: " << size << std::endl;
        std::cout << "# of OMP Threads per Proc: " << num_threads << std::endl;
        std::cout << "Execution time: " << duration.count() << " seconds" << std::endl;
    }
    delete[] ranks;
//}
#else
    //Core Application Logic Invocation
    //Passing control and configuration to  complex parsing logic(startFilter, which then call vspointdistributeop.cpp).
    //This creates an object startFilter, which then call vspointdistributeop.cpp
    startFilter startFilter(appParameters); //// Parallel execution
#endif

    return EXIT_SUCCESS;
}
