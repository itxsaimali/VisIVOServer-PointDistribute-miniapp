/***************************************************************************
 *   Copyright (C) 2008 by Ugo Becciani   *
 *   ugo.becciani@oact.inaf.it   *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/
#include <cstdlib>
#include <cstring>

#include <iostream>
#include <sstream>
#include <string>

#include "vstable.h" // Assumed to define VSTable class for data handling

#include "vspointdistributeop.h" // Custom header for point distribution operation
#include "startFilter.h"  // Self-header for class definition

//#ifdef VSMPI shows constructor expects MPI_Comm object, allowing main.cpp to pass the NEW_COMM if in parallel mode. 
#ifdef VSMPI
#include "mpi.h"
startFilter::startFilter(std::map<std::string,std::string> appParameters,MPI_Comm newcomm)
#else
startFilter::startFilter(std::map<std::string,std::string> appParameters)
#endif
    //Constructor Initialization
{      //It declares local variables rank, size, and ierr.
    std::map<std::string,std::string>::iterator iter;
    int rank=0, size=1, ierr;
#ifdef VSMPI
    m_VS_COMM=newcomm;
    //Sets MPI to return error codes instead of stucking the program on errors,
    MPI_Comm_set_errhandler(MPI_COMM_WORLD,MPI_ERRORS_RETURN);
    ierr=MPI_Comm_size (m_VS_COMM, &size);
    if(ierr!=MPI_SUCCESS) return;
    ierr=MPI_Comm_rank (m_VS_COMM, &rank);
    if(ierr!=MPI_SUCCESS) return;
    
    std::cout<<rank<<" TEST "<<size<<std::endl;
#endif
       //Operation Lookup and Dispatch. 
    iter =appParameters.find("op"); //This section parses the op (operation) parameter from the appParameters map.
    if( iter == appParameters.end())
    {
        if (rank==0) {
            iter =appParameters.find("help");
            if( iter == appParameters.end())
                std::cerr <<"No operation is requested"<<std::endl;
            std::cerr<<"VisIVOFilters version  2.1.1 June 28th 2013"<<std::endl<<std::endl;
            std::cerr <<"Syntax1: VisIVOFilters --op operation  [PARAMETERS] [--help]"<<std::endl;
            std::cerr <<"Syntax2: VisIVOFilters parameterFile"<<std::endl;
            std::cerr <<"valid operations: randomizer selcolumns merge append selfield mathop decimator extraction visualop showtable statistic pointdistribute pointproperty coarsevolume extractsubvolume interpolate module sigmacontours cartesian2polar AHFstep vbt2ahf grid2point extractlist addId ahfhalolist ahfhalogalaxyext changecolname splittable wrvotable include mres poca"<<std::endl;
        }
        return;
    }
    
    m_opName=iter->second.c_str();
    
    std::stringstream sstreamOp(iter->second);
    appParameters.erase(iter);
    int idOp=-1;
    
    //Operation Execution (switch statement for "pointdistribute").
    if(sstreamOp.str()=="pointdistribute") idOp=12;
    
    std::vector <std::string> valOutFilename;
    std::string filename;
    switch(idOp)
    {
            /*** Randomizer OP **/
            
            /*** PointDistribute  OP **/
        case 12:
        {
        
            VSPointDistributeOp op;
            
            /*iter =appParameters.find("help"); 
            if( iter != appParameters.end())
            {                                  //applied if statement only to print help by rank == 0
                op.printHelp();                    
                return;
            }
        
        
            iter =appParameters.find("file");
            if( iter == appParameters.end())
            {
                std::cerr <<"No input file table is provided"<<std::endl;
                return;
            }
            

            std::stringstream sFilename(iter->second);
            sFilename>>filename;
            if(filename.find(".bin") == std::string::npos)
                filename.append(".bin");
            VSTable table(filename);
            
            if(!table.tableExist())
            {
                std::cerr <<"No valid input file table is provided"<<std::endl;
                return;
            }
            op.setParameters(appParameters);
            op.addInput(&table);*/
            int signal = 0;
            if (rank == 0)
            {
                iter =appParameters.find("help"); 
                if( iter != appParameters.end())
                {                                  //applied if statement only to print help by rank == 0
                    op.printHelp();                    
                    signal = 1;
                    MPI_Bcast(&signal, 1, MPI_INT, 0, MPI_COMM_WORLD);
                    return;
                }
            
            
                iter =appParameters.find("file");
                if( iter == appParameters.end())
                {
                    std::cerr <<"No input file table is provided"<<std::endl;
                    signal = 1;
                    MPI_Bcast(&signal, 1, MPI_INT, 0, MPI_COMM_WORLD);
                    return;
                }
                

                std::stringstream sFilename(iter->second);
                sFilename>>filename;
                if(filename.find(".bin") == std::string::npos)
                    filename.append(".bin");

                signal = 0;
                MPI_Bcast(&signal, 1, MPI_INT, 0, MPI_COMM_WORLD);
                
            }
            else
            {
                MPI_Bcast(&signal, 1, MPI_INT, 0, MPI_COMM_WORLD);
                if (signal == 1)
                    return;
            }    
            MPI_Barrier(MPI_COMM_WORLD);
            if (rank == 0)
            {
                int string_length = filename.length(); // Get the number of characters
                MPI_Bcast(&string_length, 1, MPI_INT, 0, MPI_COMM_WORLD);
                MPI_Bcast((void*)filename.data(), string_length, MPI_CHAR, 0, MPI_COMM_WORLD);

            }
            else
            {
                int received_length;

                MPI_Bcast(&received_length, 1, MPI_INT, 0, MPI_COMM_WORLD);
                filename.resize(received_length);
                MPI_Bcast((void*)filename.data(), received_length, MPI_CHAR, 0, MPI_COMM_WORLD);

            }

            VSTable table(filename);
            if (rank == 0)
            {
                if(!table.tableExist())
                {
                    std::cerr <<"No valid input file table is provided"<<std::endl;
                    int exit_flag = 1;
                    MPI_Bcast(&exit_flag, 1, MPI_INT, 0, MPI_COMM_WORLD);
                    return;
                }
            }

            MPI_Barrier(MPI_COMM_WORLD);
            op.setParameters(appParameters);
            op.addInput(&table);
            
            MPI_Barrier(MPI_COMM_WORLD);
            op.execute();
            valOutFilename=op.realOutFilename();

            break;
        }
            /*** END PointDistribute OP **/
            
            
            /*** Default **/
        default:
        {
            //serial
            if(rank==0)  //serialized
            {
                
                std::cerr <<"No valid operation was given"<<std::endl;
                std::cerr<<"VisIVOFilters version Version 2.1.1 June 28th 2013 "<<std::endl<<std::endl;
                std::cerr <<"Syntax1: VisIVOFilters --op operation  [PARAMETERS] [--help]"<<std::endl;
                std::cerr <<"Syntax2: VisIVOFilters parameterFile"<<std::endl;
                std::cerr <<"An operation code is expected: randomizer selcolumns merge append selfield mathop decimator extraction visualop showtable statistic pointdistribute pointproperty coarsevolume extractsubvolume interpolate module sigmacontours cartesian2polar AHFstep vbt2ahf grid2point extractlist addId ahfhalolist ahfhalogalaxyext changecolname splittable wrvotable include mres poca"<<std::endl<<std::endl;
                
            }
            return;
        }
            /*** END Default  OP **/
    }
    return;
}
