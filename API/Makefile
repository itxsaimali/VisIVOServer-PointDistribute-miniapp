# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)


ROOT=/Users/ube/VisIVOServer_OACT/2.3/
ROOTFIL=$(ROOT)/VisIVOFilters/Filters/
ROOTUTIL=$(ROOT)/VisIVOUtils/
ROOTVIEW=$(ROOT)/VisIVOViewer/Viewer/
ROOTIMP=$(ROOT)/VisIVOImporter/Importers/
UTILS=$(ROOT)/Utils/
VTKDIR=/opt/vtk5/
CURLDIR=/usr/local/

VSFILINC1=$(ROOTFIL)
VSFILINC2=$(UTILS)
INCLUDE = -I/usr/local/Cellar/boost/1.59.0/include -I$(ROOTVIEW) -I$(UTILS) -I/usr/local/include -I/opt/local/include -I$(VTKDIR)/include/vtk-5.10 -I$(ROOT) -I$(ROOTVIEW)/Splotch -I$(ROOTVIEW)/Splotch/c_utils -I$(ROOTFIL) -I$(ROOTUTIL)

API= $(ROOT)/API/visivoset.o $(ROOT)/visivoview.o $(ROOT)/API/visivoimp.o $(ROOT)/API/visivofil.o 



OBJS= visivoset.o visivoview.o visivoimp.o visivofil.o $(ROOTIMP)/build/abstractsource.o $(ROOTIMP)/build/binsource.o $(ROOTIMP)/build/fitsimagesource.o $(ROOTIMP)/build/flysource.o $(ROOTIMP)/build/ramsessource.o $(ROOTIMP)/build/rawpointssource.o $(ROOTIMP)/build/vosourcenew.o $(ROOTIMP)/build/asciisource.o $(ROOTIMP)/build/csvsource.o $(ROOTIMP)/build/fitstablesource.o $(ROOTIMP)/build/gadgetsource.o $(ROOTIMP)/build/hdf5source.o $(ROOTIMP)/build/muportalsource.o $(ROOTIMP)/build/rawgridsource.o $(ROOTIMP)/build/tinystr.o $(ROOTIMP)/build/tinyxml.o $(ROOTIMP)/build/tinyxmlerror.o $(ROOTIMP)/build/tinyxmlparser.o $(ROOTIMP)/build/historyXmlWriter.o $(ROOTIMP)/build/commandline.o $(ROOTIMP)/build/visivoutils.o $(ROOTFIL)/build/fparser.o $(ROOTFIL)/build/vsLine.o $(ROOTFIL)/build/vscoarsevolumeop.o  $(ROOTFIL)/build/vsmathop.o $(ROOTFIL)/build/vsprinttableop.o $(ROOTFIL)/build/vsstatisticop.o $(ROOTFIL)/build/fpoptimizer.o $(ROOTFIL)/build/vsVector.o $(ROOTFIL)/build/vscutop.o $(ROOTFIL)/build/vsmergeop.o $(ROOTFIL)/build/vsrandomizertableop.o $(ROOTFIL)/build/vsswapop.o $(ROOTFIL)/build/mainFilter.o $(ROOTFIL)/build/vsVoxel.o $(ROOTFIL)/build/vsdecimatorop.o $(ROOTFIL)/build/vsmoduleop.o $(ROOTFIL)/build/vsselectcolumnsop.o $(ROOTFIL)/build/vstable.o $(ROOTFIL)/build/parametersparser.o $(ROOTFIL)/build/vsaddidop.o $(ROOTFIL)/build/vsexampleop.o $(ROOTFIL)/build/vsmrcampos.o $(ROOTFIL)/build/vsselectfieldop.o $(ROOTFIL)/build/vstableop.o $(ROOTFIL)/build/tinystr.o $(ROOTFIL)/build/vsextractlistrowsop.o $(ROOTFIL)/build/vsmuportalop.o $(ROOTFIL)/build/vsselectvol.o $(ROOTFIL)/build/tinyxml.o  $(ROOTFIL)/build/vsextractsubvolumeop.o $(ROOTFIL)/build/vsobject.o  $(ROOTFIL)/build/vsshowtableop.o $(ROOTFIL)/build/vsvisualop.o $(ROOTFIL)/build/tinyxmlerror.o $(ROOTFIL)/build/vsappend.o  $(ROOTFIL)/build/vsgrid2pointdistr.o $(ROOTFIL)/build/vspointdistributeop.o $(ROOTFIL)/build/vssigmacontoursop.o $(ROOTFIL)/build/vsvollimit.o  $(ROOTFIL)/build/tinyxmlparser.o $(ROOTFIL)/build/vschangecolnameop.o $(ROOTFIL)/build/vsincludeop.o $(ROOTFIL)/build/vspointpropertyop.o $(ROOTFIL)/build/vssphereop.o $(ROOTFIL)/build/vswrvotableop.o $(ROOTFIL)/build/util.o $(ROOTFIL)/build/vsclustercellop.o $(ROOTFIL)/build/vsinterpolateop.o $(ROOTFIL)/build/vspolarop.o $(ROOTFIL)/build/vssplittableop.o $(ROOTFIL)/build/historyXmlWriter.o $(ROOTFIL)/build/startFilter.o $(ROOTVIEW)/build/isosurfacepipe.o $(ROOTVIEW)/build/pipe.o $(ROOTVIEW)/build/pointspipe.o $(ROOTVIEW)/build/slicerpipe.o $(ROOTVIEW)/build/splotchpipecamera.o $(ROOTVIEW)/build/volumepipe.o $(ROOTVIEW)/build/vtkimagepipe.o $(ROOTVIEW)/build/pointssmoothpipe.o $(ROOTVIEW)/build/splotchpipe.o $(ROOTVIEW)/build/vectorpipe.o $(ROOTVIEW)/build/volumeslicer.o $(ROOTVIEW)/build/transform.o $(ROOTVIEW)/build/announce.o $(ROOTVIEW)/build/ls_image.o $(ROOTVIEW)/build/paramfile.o $(ROOTVIEW)/build/walltimer.o $(ROOTVIEW)/build/error_handling.o $(ROOTVIEW)/build/mpi_support.o $(ROOTVIEW)/build/string_utils.o $(ROOTVIEW)/build/bin_reader.o $(ROOTVIEW)/build/gadget_reader.o $(ROOTVIEW)/build/mesh_reader.o $(ROOTVIEW)/build/visivo_reader.o $(ROOTVIEW)/build/bin_reader_mpi.o $(ROOTVIEW)/build/millenium_reader.o $(ROOTVIEW)/build/tipsy_reader.o $(ROOTVIEW)/build/ramses_reader.o $(ROOTVIEW)/build/scenemaker.o $(ROOTVIEW)/build/splotch_host.o $(ROOTVIEW)/build/splotch.o $(ROOTVIEW)/build/splotchutils.o $(ROOTVIEW)/build/m_rotation.o $(ROOTVIEW)/build/mesh_creator.o $(ROOTVIEW)/build/p_selector.o $(ROOTVIEW)/build/randomizer.o $(ROOTVIEW)/build/walltime_c.o $(ROOTVIEW)/build/color.o $(ROOTVIEW)/build/tinyxml.o $(ROOTVIEW)/build/visivoutils.o $(ROOTVIEW)/build/historyXmlWriter.o $(ROOTVIEW)/build/tinyxmlerror.o $(ROOTVIEW)/build/vsobject.o $(ROOTVIEW)/build/tinyxmlparser.o $(ROOTVIEW)/build/vstable.o $(ROOTVIEW)/build/optionssetter.o $(ROOTVIEW)/build/tinystr.o $(ROOTVIEW)/build/vsstatisticop.o $(ROOTVIEW)/build/vstableop.o  $(ROOTVIEW)/build/luteditor.o  $(ROOTVIEW)/build/extendedglyph3d.o $(ROOTUTIL)/build/vscreatepath.o $(ROOTUTIL)/build/vsloadhistory.o $(ROOTUTIL)/build/vsutils.o $(ROOTUTIL)/build/vscreategenericslices.o $(ROOTUTIL)/build/vscreateslices.o $(ROOTUTIL)/build/vstextcol.o $(ROOTUTIL)/build/vuparametersparser.o $(ROOTUTIL)/build/vsobject.o $(ROOTUTIL)/build/visivoutils.o $(ROOTUTIL)/build/fparser.o $(ROOTUTIL)/build/tinystr.o $(ROOTUTIL)/build/tinyxml.o $(ROOTUTIL)/build/tinyxmlerror.o $(ROOTUTIL)/build/tinyxmlparser.o $(ROOTUTIL)/build/parametersparser.o $(ROOTUTIL)/build/vstable.o




CPPFLAGS= -DSPLVISIVO -DLIGHT -DMAC

LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(VTKDIR)/lib/vtk-5.10

LIB = -lvtkRendering -lvtkHybrid -lvtkVolumeRendering -lvtkexoIIc -lvtkRendering -lvtkGraphics -lvtkverdict -lvtkImaging -lvtkftgl -lvtkfreetype -lvtkIO -lvtkFiltering -lvtkCommon -lvtkDICOMParser -lvtkNetCDF -lvtkmetaio -lvtksqlite -lpthread -lvtkpng -lvtkzlib -lvtkjpeg -lm -lvtkexpat -lvtksys -ldl -ltiff -lvtkfreetype -lcurl

#LDFLAGS= -framework CoreServices -framework ApplicationServices -framework Cocoa -framework Foundation -framework IOKit -framework Carbon -framework OpenGL 

CPPFLAGS= $(INCLUDE) 



all: VisIVOApi 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< 

VisIVOApi:  $(API)
	ar -cr  libVisIVOApi.a $(OBJS)


	
clean:
	rm -f *.o ../../Utils/*.o core
