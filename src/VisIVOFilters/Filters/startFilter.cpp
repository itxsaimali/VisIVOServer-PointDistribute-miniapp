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

#include "vstable.h"

#include "vspointdistributeop.h"
#include "startFilter.h"

#ifdef VSMPI
#include "mpi.h"
startFilter::startFilter(std::map<std::string,std::string> appParameters,MPI_Comm newcomm)
#else
startFilter::startFilter(std::map<std::string,std::string> appParameters)
#endif

{
    std::map<std::string,std::string>::iterator iter;
    int rank=0, size=1, ierr;
#ifdef VSMPI
    m_VS_COMM=newcomm;
    MPI_Errhandler_set(MPI_COMM_WORLD,MPI_ERRORS_RETURN);
    ierr=MPI_Comm_size (m_VS_COMM, &size);
    if(ierr!=MPI_SUCCESS) return;
    ierr=MPI_Comm_rank (m_VS_COMM, &rank);
    if(ierr!=MPI_SUCCESS) return;
    
    std::clog<<rank<<" TEST "<<size<<std::endl;
#endif
        
    iter =appParameters.find("op");
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
    
    
    if(sstreamOp.str()=="pointdistribute") idOp=12;
    
    std::vector <std::string> valOutFilename;
    std::string filename;
    switch(idOp)
    {
            /*** Randomizer OP **/
            
            /*** PointDistribute  OP **/
        case 12:
        {
            //serial
            if(rank==0)  //serialized
            {
                
                iter =appParameters.find("help");
                if( iter != appParameters.end())
                {
                    VSPointDistributeOp op;
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
                // appParameters.erase(iter);
                sFilename>>filename;
                if(filename.find(".bin") == std::string::npos)
                    filename.append(".bin");
                VSTable table(filename);
                if(!table.tableExist())
                {
                    std::cerr <<"No valid input file table is provided"<<std::endl;
                    return;
                }
                
                VSPointDistributeOp op;
                op.setParameters(appParameters);
                op.addInput(&table);
                op.execute();
                valOutFilename=op.realOutFilename();
               
                
            }
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
