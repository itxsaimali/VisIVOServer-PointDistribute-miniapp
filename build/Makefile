# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)

LD = $(COMPILERCPP)




VSVIEW=	isosurfacepipe.o	pipe.o		pointspipe.o		slicerpipe.o		splotchpipecamera.o	volumepipe.o			vtkimagepipe.o 	pointssmoothpipe.o	splotchpipe.o		vectorpipe.o			volumeslicer.o		./Splotch/kernel/transform.o ./Splotch/cxxsupport/announce.o		./Splotch/cxxsupport/ls_image.o		./Splotch/cxxsupport/paramfile.o		./Splotch/cxxsupport/walltimer.o ./Splotch/cxxsupport/error_handling.o	./Splotch/cxxsupport/mpi_support.o	./Splotch/cxxsupport/string_utils.o ./Splotch/reader/bin_reader.o			./Splotch/reader/gadget_reader.o		./Splotch/reader/mesh_reader.o			./Splotch/reader/visivo_reader.o ./Splotch/reader/bin_reader_mpi.o			./Splotch/reader/millenium_reader.o		./Splotch/reader/tipsy_reader.o   ./Splotch/reader/ramses_reader.o ./Splotch/splotch/scenemaker.o		./Splotch/splotch/splotch_host.o ./Splotch/splotch/splotch.o		./Splotch/splotch/splotchutils.o ./Splotch/booster/m_rotation.o		./Splotch/booster/mesh_creator.o		./Splotch/booster/p_selector.o		./Splotch/booster/randomizer.o ./Splotch/c_utils/walltime_c.o ../../Utils/color.o								../../Utils/tinyxml.o			../../Utils/visivoutils.o 		../../Utils/historyXmlWriter.o		../../Utils/tinyxmlerror.o		../../Utils/vsobject.o ../../Utils/extendedglyph3d.o		../../Utils/luteditor.o				../../Utils/tinyxmlparser.o		../../VisIVOFilters/Filters/vstable.o 			../../Utils/optionssetter.o		../../Utils/tinystr.o		../../VisIVOFilters/Filters/vsstatisticop.o ../../VisIVOFilters/Filters/vstableop.o


OBJS=	isosurfacepipe.o	pipe.o		pointspipe.o		slicerpipe.o		splotchpipecamera.o	volumepipe.o			vtkimagepipe.o mainViewer.o		pointssmoothpipe.o	splotchpipe.o		vectorpipe.o			volumeslicer.o		transform.o  announce.o	 ls_image.o	 paramfile.o	 walltimer.o  error_handling.o	 mpi_support.o	 string_utils.o  bin_reader.o		 gadget_reader.o		 mesh_reader.o			 visivo_reader.o  bin_reader_mpi.o	 millenium_reader.o		 tipsy_reader.o ramses_reader.o scenemaker.o		 splotch_host.o  splotch.o		 splotchutils.o  m_rotation.o		 mesh_creator.o		 p_selector.o	 randomizer.o walltime_c.o color.o	 tinyxml.o		 visivoutils.o 		 historyXmlWriter.o		 tinyxmlerror.o		 vsobject.o  extendedglyph3d.o		 luteditor.o		 tinyxmlparser.o	 vstable.o 		 optionssetter.o		 tinystr.o		 vsstatisticop.o  vstableop.o



INCLUDE = -I/usr/local/Cellar/boost/1.59.0/include -I/Users/ube/VisIVOServer_OACT/2.3/VisIVOViewer/Viewer -I/Users/ube/VisIVOServer_OACT/2.3/Utils -I/usr/local/include -I/opt/local/include -I/opt/vtk5/include/vtk-5.10 -I/Users/ube/VisIVOServer_OACT/2.3 -I/Users/ube/VisIVOServer_OACT/2.3/Utils -I/Users/ube/VisIVOServer_OACT/2.3/VisIVOViewer/Viewer/Splotch -I/Users/ube/VisIVOServer_OACT/2.3/VisIVOViewer/Viewer/Splotch/c_utils -I/Users/ube/VisIVOServer_OACT/2.3/VisIVOViewer/Viewer/pipe -I/Users/ube/VisIVOServer_OACT/2.3/VisIVOFilters/Filters -I/Users/ube/VisIVOServer_OACT/2.3/VisIVOUtils 

#CPPFLAGS= -DLIGHT $(INCLUDE)

CPPFLAGS= -DSPLVISIVO -DLIGHT -DMAC

LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L/opt/vtk5/lib/vtk-5.10
##LIB = -lcurl -lhdf5 -lcfitsio -lm
LIB = -lvtkRendering -lvtkHybrid -lvtkVolumeRendering -lvtkexoIIc -lvtkRendering -lvtkGraphics -lvtkverdict -lvtkImaging -lvtkftgl -lvtkfreetype -lvtkIO -lvtkFiltering -lvtkCommon -lvtkDICOMParser -lvtkNetCDF -lvtkmetaio -lvtksqlite -lpthread -lvtkpng -lvtkzlib -lvtkjpeg -lm -lvtkexpat -lvtksys -ldl -ltiff -lvtkfreetype -lcurl

LDFLAGS= -framework CoreServices -framework ApplicationServices -framework Cocoa -framework Foundation -framework IOKit -framework Carbon -framework OpenGL 

all: VisIVOViewer
 
.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

VisIVOViewer: $(VSVIEW)
	$(LD) $(CPPFLAGS) -o VisIVOViewer $(OBJS) $(LDFLAGS) $(INCLUDE) $(LIBRARYPATH) $(LIB)

	
clean:
	rm -f *.o ../../Utils/*.o ./Splotch/kernel/*.o ./Splotch/cxxsupport/*.o		./Splotch/reader/*.o ./Splotch/splotch/*o	./Splotch/booster/*.o		../../VisIVOFilters/Filters/vstable.o 	../../VisIVOFilters/Filters/vsstatisticop.o ../../VisIVOFilters/Filters/vstableop.o core

==================================

VSFILINC1=/Users/ube/VisIVOServer_OACT/2.3/VisIVOFilters/Filters
VSFILINC2=/Users/ube/VisIVOServer_OACT/2.3/Utils

VSFIL= ../../Utils/fparser.o	vsLine.o			vscoarsevolumeop.o		vsmathop.o			vsprinttableop.o	vsstatisticop.o 	fpoptimizer.o		vsVector.o			vscutop.o			vsmergeop.o			vsrandomizertableop.o		vsswapop.o mainFilter.o			vsVoxel.o			vsdecimatorop.o		vsmoduleop.o	vsselectcolumnsop.o		vstable.o ../../Utils/parametersparser.o		vsaddidop.o		vsexampleop.o		vsmrcampos.o	vsselectfieldop.o		vstableop.o ../../Utils/tinystr.o		vsextractlistrowsop.o		vsmuportalop.o		vsselectvol.o			 ../../Utils/tinyxml.o				vsextractsubvolumeop.o	vsobject.o			vsshowtableop.o		vsvisualop.o ../../Utils/tinyxmlerror.o		vsappend.o			vsgrid2pointdistr.o		vspointdistributeop.o		vssigmacontoursop.o		vsvollimit.o ../../Utils/tinyxmlparser.o		vschangecolnameop.o		vsincludeop.o			vspointpropertyop.o		vssphereop.o			vswrvotableop.o 	../../Utils/util.o			vsclustercellop.o		vsinterpolateop.o		vspolarop.o		vssplittableop.o ../../Utils/historyXmlWriter.o startFilter.o

INCLUDE = -I$(VSFILINC1) -I$(VSFILINC2)
#INCLUDE = -I$(GAIAINC) 
#CFLAGS= $(INCLUDE)  -std=c99 
#CPPFLAGS= $(INCLUDE) -g -fsanitize=address -mllvm -asan-stack
CPPFLAGS= $(INCLUDE) 
LIB =  -lm


all: VisIVOFilter 

VisIVOFilter: $(VSFIL)
	$(CPP) $(CPPFLAGS) -o VisIVOFilter $(VSFIL) $(INCLUDE) $(LIB)


	
clean:
	rm -f *.o ../../Utils/*.o core

===============================

# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)



VSFILINC1=/Users/ube/VisIVOServer_OACT/2.3/VisIVOImporter/Importers
VSFILINC2=/Users/ube/VisIVOServer_OACT/2.3/Utils

VSFIL=	abstractsource.o	binsource.o		fitsimagesource.o	flysource.o			mainImporter.o	ramsessource.o	rawpointssource.o	vosourcenew.o asciisource.o		csvsource.o		fitstablesource.o	gadgetsource.o	hdf5source.o		muportalsource.o	rawgridsource.o ../../Utils/tinystr.o		../../Utils/tinyxml.o		../../Utils/tinyxmlerror.o	../../Utils/tinyxmlparser.o	../../Utils/historyXmlWriter.o ../../Utils/commandline.o ../../Utils/visivoutils.o		


INCLUDE = -I$(VSFILINC1) -I$(VSFILINC2) -I/opt/local/include/ -I/usr/local/include/ -I/usr/local/Cellar/boost/1.59.0/include 
#INCLUDE = -I$(GAIAINC) 
#CFLAGS= $(INCLUDE)  -std=c99 
#CPPFLAGS= $(INCLUDE) -g -fsanitize=address -mllvm -asan-stack
CPPFLAGS= -DLIGHT $(INCLUDE)
LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib 
LIB = -lcurl -lhdf5 -lcfitsio -lm


all: VisIVOFilter 

VisIVOFilter: $(VSFIL)
	$(CPP) $(CPPFLAGS) -o VisIVOFilter $(VSFIL) $(INCLUDE) $(LIBRARYPATH) $(LIB)


	
clean:
	rm -f *.o ../../Utils/*.o core

=====================================

# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)



VSUTIINC1=/Users/ube/VisIVOServer_OACT/2.3/VisIVOUtils
VSUTIINC2=/Users/ube/VisIVOServer_OACT/2.3/Utils
VSUTIINC3=/usr/local/Cellar/boost/1.59.0/include


VSUTI= mainUtils.o			vscreatepath.o		vsloadhistory.o		vsutils.o vscreategenericslices.o	vscreateslices.o		vstextcol.o			vuparametersparser.o ../Utils/vsobject.o ../Utils/visivoutils.o ../Utils/fparser.o  ../Utils/tinystr.o ../Utils/tinyxml.o ../Utils/tinyxmlerror.o ../Utils/tinyxmlparser.o ../Utils/parametersparser.o ../VisIVOFilters/Filters/vstable.o

INCLUDE = -I$(VSUTIINC3) -I$(VSUTIINC1) -I$(VSUTIINC2)
#INCLUDE = -I$(GAIAINC) 
#CFLAGS= $(INCLUDE)  -std=c99 
#CPPFLAGS= $(INCLUDE) -g -fsanitize=address -mllvm -asan-stack
CPPFLAGS= $(INCLUDE) 
LIB =  -l curl -lm


all: VisIVOUtils 

VisIVOUtils: $(VSUTI)
	$(CPP) $(CPPFLAGS) -o VisIVOUtils $(VSUTI) $(INCLUDE) $(LIB)


	
clean:
	rm -f *.o ../../Utils/*.o core
