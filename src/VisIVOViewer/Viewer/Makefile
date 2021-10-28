# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)

LD = $(COMPILERCPP)

ROOTVIEWER= /Users/fxbio6600/Downloads/VisIVOServer-master/VisIVOViewer/Viewer


VSFILINC1=/Users/fxbio6600/Downloads/VisIVOServer-master/VisIVOViewer/Viewer
VSFILINC2=/Users/fxbio6600/Downloads/VisIVOServer-master/Utils

VTK_LIB=/opt/vtk-9.0.3/lib/
VTK_INC=/opt/vtk-9.0.3/include/vtk-9.0
CURLDIR=/usr/local/

VSVIEW=	isosurfacepipe.o	pipe.o		pointspipe.o		slicerpipe.o		splotchpipecamera.o	volumepipe.o			vtkimagepipe.o mainViewer.o		pointssmoothpipe.o	splotchpipe.o		vectorpipe.o			volumeslicer.o		./Splotch/kernel/transform.o ./Splotch/cxxsupport/announce.o		./Splotch/cxxsupport/ls_image.o		./Splotch/cxxsupport/paramfile.o		./Splotch/cxxsupport/walltimer.o ./Splotch/cxxsupport/error_handling.o	./Splotch/cxxsupport/mpi_support.o	./Splotch/cxxsupport/string_utils.o ./Splotch/reader/bin_reader.o			./Splotch/reader/gadget_reader.o		./Splotch/reader/mesh_reader.o			./Splotch/reader/visivo_reader.o ./Splotch/reader/bin_reader_mpi.o			./Splotch/reader/millenium_reader.o		./Splotch/reader/tipsy_reader.o   ./Splotch/reader/ramses_reader.o ./Splotch/splotch/scenemaker.o		./Splotch/splotch/splotch_host.o ./Splotch/splotch/splotch.o		./Splotch/splotch/splotchutils.o ./Splotch/booster/m_rotation.o		./Splotch/booster/mesh_creator.o		./Splotch/booster/p_selector.o		./Splotch/booster/randomizer.o ./Splotch/c_utils/walltime_c.o ../../Utils/color.o								../../Utils/tinyxml.o			../../Utils/visivoutils.o 		../../Utils/historyXmlWriter.o		../../Utils/tinyxmlerror.o		../../Utils/vsobject.o ../../Utils/extendedglyph3d.o		../../Utils/luteditor.o				../../Utils/tinyxmlparser.o		../../Utils/vstable.o 			../../Utils/optionssetter.o		../../Utils/tinystr.o		../../VisIVOFilters/Filters/vsstatisticop.o ../../VisIVOFilters/Filters/vstableop.o
OBJS=	$(ROOTVIEWER)/build/isosurfacepipe.o $(ROOTVIEWER)/build/pipe.o $(ROOTVIEWER)/build/pointspipe.o $(ROOTVIEWER)/build/slicerpipe.o $(ROOTVIEWER)/build/splotchpipecamera.o $(ROOTVIEWER)/build/volumepipe.o $(ROOTVIEWER)/build/vtkimagepipe.o $(ROOTVIEWER)/build/mainViewer.o $(ROOTVIEWER)/build/pointssmoothpipe.o $(ROOTVIEWER)/build/splotchpipe.o $(ROOTVIEWER)/build/vectorpipe.o $(ROOTVIEWER)/build/volumeslicer.o $(ROOTVIEWER)/build/transform.o $(ROOTVIEWER)/build/announce.o $(ROOTVIEWER)/build/ls_image.o $(ROOTVIEWER)/build/paramfile.o $(ROOTVIEWER)/build/walltimer.o $(ROOTVIEWER)/build/error_handling.o $(ROOTVIEWER)/build/mpi_support.o $(ROOTVIEWER)/build/string_utils.o $(ROOTVIEWER)/build/bin_reader.o $(ROOTVIEWER)/build/gadget_reader.o $(ROOTVIEWER)/build/mesh_reader.o $(ROOTVIEWER)/build/visivo_reader.o $(ROOTVIEWER)/build/bin_reader_mpi.o $(ROOTVIEWER)/build/millenium_reader.o $(ROOTVIEWER)/build/tipsy_reader.o $(ROOTVIEWER)/build/ramses_reader.o $(ROOTVIEWER)/build/scenemaker.o $(ROOTVIEWER)/build/splotch_host.o $(ROOTVIEWER)/build/splotch.o $(ROOTVIEWER)/build/splotchutils.o $(ROOTVIEWER)/build/m_rotation.o $(ROOTVIEWER)/build/mesh_creator.o $(ROOTVIEWER)/build/p_selector.o $(ROOTVIEWER)/build/randomizer.o $(ROOTVIEWER)/build/walltime_c.o $(ROOTVIEWER)/build/color.o $(ROOTVIEWER)/build/tinyxml.o $(ROOTVIEWER)/build/visivoutils.o $(ROOTVIEWER)/build/historyXmlWriter.o $(ROOTVIEWER)/build/tinyxmlerror.o $(ROOTVIEWER)/build/vsobject.o $(ROOTVIEWER)/build/extendedglyph3d.o $(ROOTVIEWER)/build/luteditor.o $(ROOTVIEWER)/build/tinyxmlparser.o $(ROOTVIEWER)/build/vstable.o $(ROOTVIEWER)/build/optionssetter.o $(ROOTVIEWER)/build/tinystr.o $(ROOTVIEWER)/build/vsstatisticop.o $(ROOTVIEWER)/build/vstableop.o



INCLUDE = -I$(VSFILINC1) -I$(VSFILINC2) -I$(VSFILINC1)/../../  -I/usr/local/include -I/opt/local/include -I$(VTK_INC) -I$(VSFILINC2) -I$(VSFILINC1)/Splotch -I$(VSFILINC1)/Splotch/c_utils -I$(VSFILINC1)/../../VisIVOFilters/Filters -I$(VSFILINC1)/../../VisIVOUtils -I$(CURLDIR)/include/

#CPPFLAGS= -DLIGHT $(INCLUDE)

CPPFLAGS= -DSPLVISIVO -DLIGHT -DMAC -std=c++17

LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(VTK_LIB) -L$(CURLDIR)/lib
LIB = -lvtkRendering -lvtkHybrid -lvtkVolumeRendering -lvtkexoIIc -lvtkRendering -lvtkGraphics -lvtkverdict -lvtkImaging -lvtkftgl -lvtkfreetype -lvtkIO -lvtkFiltering -lvtkCommon -lvtkDICOMParser -lvtkNetCDF -lvtkmetaio -lvtksqlite -lpthread -lvtkpng -lvtkzlib -lvtkjpeg -lm -lvtkexpat -lvtksys -ldl -ltiff -lvtkhdf5 -lvtkhdf5_hl -lvtkNetCDF_cxx -lLSDyna -lvtkfreetype -lcurl

LDFLAGS= -framework CoreServices -framework ApplicationServices -framework Cocoa -framework Foundation -framework IOKit -framework Carbon -framework OpenGL 

all: VisIVOViewer
 
.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTVIEWER)/build/$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTVIEWER)/build/$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTVIEWER)/build/$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTVIEWER)/build/$(notdir $@)

VisIVOViewer: $(VSVIEW)
	$(LD) $(CPPFLAGS) -o VisIVOViewer $(OBJS) $(LDFLAGS) $(INCLUDE) $(LIBRARYPATH) $(LIB)

	
clean:
	rm -f *.o build/*.o ../../Utils/*.o ./Splotch/kernel/*.o ./Splotch/cxxsupport/*.o		./Splotch/reader/*.o ./Splotch/splotch/*o	./Splotch/booster/*.o		../../VisIVOFilters/Filters/vstable.o 	../../VisIVOFilters/Filters/vsstatisticop.o ../../VisIVOFilters/Filters/vstableop.o core
