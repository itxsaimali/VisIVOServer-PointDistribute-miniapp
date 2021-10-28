# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)

LD = $(COMPILERCPP)

ROOTVIEWER= /Users/fxbio6600/VisIVOServer/src/VisIVOViewer/Viewer


VSFILINC1=/Users/fxbio6600/VisIVOServer/src/VisIVOViewer/Viewer
VSFILINC2=/Users/fxbio6600/VisIVOServer/src/Utils

VTK_LIB=/opt/vtk-9.0.3/lib/
VTK_INC=/opt/vtk-9.0.3/include/vtk-9.0
CURLDIR=/usr

VSVIEW=	isosurfacepipe.o	pipe.o		pointspipe.o		slicerpipe.o			volumepipe.o			vtkimagepipe.o mainViewer.o		pointssmoothpipe.o			vectorpipe.o  ../../Utils/color.o								../../Utils/tinyxml.o			../../Utils/visivoutils.o 		../../Utils/historyXmlWriter.o		../../Utils/tinyxmlerror.o		../../Utils/vsobject.o ../../Utils/extendedglyph3d.o		../../Utils/luteditor.o				../../Utils/tinyxmlparser.o		../../Utils/vstable.o 			../../Utils/optionssetter.o		../../Utils/tinystr.o		../../VisIVOFilters/Filters/vsstatisticop.o ../../VisIVOFilters/Filters/vstableop.o
#volumeslicer.o
OBJS=	$(ROOTVIEWER)/build/isosurfacepipe.o $(ROOTVIEWER)/build/pipe.o $(ROOTVIEWER)/build/pointspipe.o $(ROOTVIEWER)/build/slicerpipe.o  $(ROOTVIEWER)/build/volumepipe.o $(ROOTVIEWER)/build/vtkimagepipe.o $(ROOTVIEWER)/build/mainViewer.o $(ROOTVIEWER)/build/pointssmoothpipe.o  $(ROOTVIEWER)/build/vectorpipe.o   $(ROOTVIEWER)/build/color.o $(ROOTVIEWER)/build/tinyxml.o $(ROOTVIEWER)/build/visivoutils.o $(ROOTVIEWER)/build/historyXmlWriter.o $(ROOTVIEWER)/build/tinyxmlerror.o $(ROOTVIEWER)/build/vsobject.o $(ROOTVIEWER)/build/extendedglyph3d.o $(ROOTVIEWER)/build/luteditor.o $(ROOTVIEWER)/build/tinyxmlparser.o $(ROOTVIEWER)/build/vstable.o $(ROOTVIEWER)/build/optionssetter.o $(ROOTVIEWER)/build/tinystr.o $(ROOTVIEWER)/build/vsstatisticop.o $(ROOTVIEWER)/build/vstableop.o
#$(ROOTVIEWER)/build/volumeslicer.o



INCLUDE = -I$(VSFILINC1) -I$(VSFILINC2) -I$(VSFILINC1)/../../  -I/usr/local/include -I/opt/local/include -I$(VTK_INC) -I$(VSFILINC2) -I$(VSFILINC1)/Splotch -I$(VSFILINC1)/Splotch/c_utils -I$(VSFILINC1)/../../VisIVOFilters/Filters -I$(VSFILINC1)/../../VisIVOUtils -I$(CURLDIR)/include/


CPPFLAGS=  -DLIGHT -DMAC -std=c++17 

SPLOTCH=false
ifeq ($(SPLOTCH),true)
	CPPFLAGS:=-DSPLVISIVO
	VSVIEW:=splotchpipecamera.o splotchpipe.o ./Splotch/kernel/transform.o ./Splotch/cxxsupport/announce.o		./Splotch/cxxsupport/ls_image.o		./Splotch/cxxsupport/paramfile.o		./Splotch/cxxsupport/walltimer.o ./Splotch/cxxsupport/error_handling.o	./Splotch/cxxsupport/mpi_support.o	./Splotch/cxxsupport/string_utils.o ./Splotch/reader/bin_reader.o			./Splotch/reader/gadget_reader.o		./Splotch/reader/mesh_reader.o			./Splotch/reader/visivo_reader.o ./Splotch/reader/bin_reader_mpi.o			./Splotch/reader/millenium_reader.o		./Splotch/reader/tipsy_reader.o   ./Splotch/reader/ramses_reader.o ./Splotch/splotch/scenemaker.o		./Splotch/splotch/splotch_host.o ./Splotch/splotch/splotch.o		./Splotch/splotch/splotchutils.o ./Splotch/booster/m_rotation.o		./Splotch/booster/mesh_creator.o		./Splotch/booster/p_selector.o		./Splotch/booster/randomizer.o ./Splotch/c_utils/walltime_c.o
	OBJS:=$(ROOTVIEWER)/build/splotchpipecamera.o $(ROOTVIEWER)/build/splotchpipe.o $(ROOTVIEWER)/build/splotch_host.o $(ROOTVIEWER)/build/splotch.o $(ROOTVIEWER)/build/splotchutils.o $(ROOTVIEWER)/build/transform.o $(ROOTVIEWER)/build/announce.o $(ROOTVIEWER)/build/ls_image.o $(ROOTVIEWER)/build/paramfile.o $(ROOTVIEWER)/build/walltimer.o $(ROOTVIEWER)/build/error_handling.o $(ROOTVIEWER)/build/mpi_support.o $(ROOTVIEWER)/build/string_utils.o $(ROOTVIEWER)/build/bin_reader.o $(ROOTVIEWER)/build/gadget_reader.o $(ROOTVIEWER)/build/mesh_reader.o $(ROOTVIEWER)/build/visivo_reader.o $(ROOTVIEWER)/build/bin_reader_mpi.o $(ROOTVIEWER)/build/millenium_reader.o $(ROOTVIEWER)/build/tipsy_reader.o $(ROOTVIEWER)/build/ramses_reader.o $(ROOTVIEWER)/build/m_rotation.o $(ROOTVIEWER)/build/mesh_creator.o $(ROOTVIEWER)/build/p_selector.o $(ROOTVIEWER)/build/randomizer.o $(ROOTVIEWER)/build/walltime_c.o
	endif

LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(VTK_LIB) -L$(CURLDIR)/lib
#LIB = -lvtkRendering -lvtkHybrid -lvtkVolumeRendering -lvtkexoIIc -lvtkRendering -lvtkGraphics -lvtkverdict -lvtkImaging -lvtkftgl -lvtkfreetype -lvtkIO -lvtkFiltering -lvtkCommon -lvtkDICOMParser -lvtkNetCDF -lvtkmetaio -lvtksqlite -lpthread -lvtkpng -lvtkzlib -lvtkjpeg -lm -lvtkexpat -lvtksys -ldl -ltiff -lvtkhdf5 -lvtkhdf5_hl -lvtkNetCDF_cxx -lLSDyna -lvtkfreetype -lcurl
LIB=  -lvtkChartsCore-9.0 \
            -lvtkCommonColor-9.0 \
            -lvtkCommonComputationalGeometry-9.0 \
            -lvtkCommonCore-9.0 \
            -lvtkCommonDataModel-9.0 \
            -lvtkCommonExecutionModel-9.0 \
            -lvtkCommonMath-9.0 \
            -lvtkCommonMisc-9.0 \
            -lvtkCommonSystem-9.0 \
            -lvtkCommonTransforms-9.0 \
            -lvtkDICOMParser-9.0 \
            -lvtkDomainsChemistry-9.0 \
            -lvtkdoubleconversion-9.0 \
            -lvtkexpat-9.0 \
            -lvtkFiltersAMR-9.0 \
            -lvtkFiltersCore-9.0 \
            -lvtkFiltersExtraction-9.0 \
            -lvtkFiltersFlowPaths-9.0 \
            -lvtkFiltersGeneral-9.0 \
            -lvtkFiltersGeneric-9.0 \
            -lvtkFiltersGeometry-9.0 \
            -lvtkFiltersHybrid-9.0 \
            -lvtkFiltersHyperTree-9.0 \
            -lvtkFiltersImaging-9.0 \
            -lvtkFiltersModeling-9.0 \
            -lvtkFiltersParallel-9.0 \
            -lvtkFiltersParallelImaging-9.0 \
            -lvtkFiltersProgrammable-9.0 \
            -lvtkFiltersSMP-9.0 \
            -lvtkFiltersSelection-9.0 \
            -lvtkFiltersSources-9.0 \
            -lvtkFiltersStatistics-9.0 \
            -lvtkFiltersTexture-9.0 \
            -lvtkFiltersVerdict-9.0 \
            -lvtkglew-9.0 \
            -lvtkGeovisCore-9.0 \
            -lvtkIOAMR-9.0 \
            -lvtkIOCore-9.0 \
            -lvtkIOEnSight-9.0 \
            -lvtkIOExodus-9.0 \
            -lvtkIOExport-9.0 \
            -lvtkIOGeometry-9.0 \
            -lvtkIOImage-9.0 \
            -lvtkIOImport-9.0 \
            -lvtkIOInfovis-9.0 \
            -lvtkIOLSDyna-9.0 \
            -lvtkIOLegacy-9.0 \
            -lvtkIOMINC-9.0 \
            -lvtkIOMovie-9.0 \
            -lvtkIOPLY-9.0 \
            -lvtkIOParallel-9.0 \
            -lvtkIOParallelXML-9.0 \
            -lvtkIOSQL-9.0 \
            -lvtkIOVideo-9.0 \
            -lvtkIOXML-9.0 \
            -lvtkIOXMLParser-9.0 \
            -lvtkImagingColor-9.0 \
            -lvtkImagingCore-9.0 \
            -lvtkImagingFourier-9.0 \
            -lvtkImagingGeneral-9.0 \
            -lvtkImagingHybrid-9.0 \
            -lvtkImagingMath-9.0 \
            -lvtkImagingMorphological-9.0 \
            -lvtkImagingSources-9.0 \
            -lvtkImagingStatistics-9.0 \
            -lvtkImagingStencil-9.0 \
            -lvtkInfovisCore-9.0 \
            -lvtkInfovisLayout-9.0 \
            -lvtkInteractionImage-9.0 \
            -lvtkInteractionStyle-9.0 \
            -lvtkInteractionWidgets-9.0 \
            -lvtkloguru-9.0 \
            -lvtklz4-9.0 \
            -lvtklzma-9.0 \
            -lvtkParallelCore-9.0 \
            -lvtkParallelDIY-9.0 \
            -lvtkRenderingAnnotation-9.0 \
            -lvtkRenderingContext2D-9.0  \
            -lvtkRenderingCore-9.0 \
            -lvtkRenderingFreeType-9.0 \
            -lvtkRenderingFreeType-9.0 \
            -lvtkRenderingGL2PSOpenGL2-9.0 \
            -lvtkRenderingImage-9.0 \
            -lvtkRenderingLOD-9.0 \
            -lvtkRenderingLabel-9.0 \
            -lvtkRenderingOpenGL2-9.0 \
            -lvtkRenderingUI-9.0 \
            -lvtkRenderingVolume-9.0 \
            -lvtkRenderingVolumeOpenGL2-9.0 \
            -lvtkViewsContext2D-9.0 \
            -lvtkViewsCore-9.0 \
            -lvtkViewsInfovis-9.0 \
            -lvtkexodusII-9.0 \
            -lvtkfreetype-9.0 \
            -lvtkgl2ps-9.0  \
            -lvtkjsoncpp-9.0 \
            -lvtkmetaio-9.0 \
            -lvtkogg-9.0  \
            -lvtksqlite-9.0 \
            -lvtksys-9.0 \
            -lvtkverdict-9.0 \
            -lvtkzlib-9.0 \
			-lcurl
            #-lvtkGUISupportQt-9.0 
            #-lvtkGUISupportQtSQL-9.0 
            #-lvtkRenderingQt-9.0
            #-lvtkViewsQt-9.0 


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
