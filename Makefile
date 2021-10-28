# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)

ROOTIMPORTER=./src/VisIVOImporter/Importers
ROOTFILTER= ./src/VisIVOFilters/Filters
ROOTVSUTILS= ./src/VisIVOUtils
ROOTVIEWER= ./src/VisIVOViewer/Viewer

ROOTUTILS=./src/Utils
VSINC=./src/

HDF5=/usr/local
BOOST=/opt/boost_1_75_0
#CURL=/opt/curl7_19_4/
CFITSIO=/opt/cfitsio-3.49

SRCIMPORTER= $(ROOTIMPORTER)/abstractsource.o	$(ROOTIMPORTER)/binsource.o		$(ROOTIMPORTER)/fitsimagesource.o	$(ROOTIMPORTER)/flysource.o			$(ROOTIMPORTER)/mainImporter.o	$(ROOTIMPORTER)/ramsessource.o	$(ROOTIMPORTER)/rawpointssource.o	$(ROOTIMPORTER)/vosourcenew.o $(ROOTIMPORTER)/asciisource.o $(ROOTIMPORTER)/csvsource.o $(ROOTIMPORTER)/fitstablesource.o	$(ROOTIMPORTER)/gadgetsource.o	$(ROOTIMPORTER)/hdf5source.o $(ROOTIMPORTER)/muportalsource.o	$(ROOTIMPORTER)/rawgridsource.o $(ROOTUTILS)/tinystr.o $(ROOTUTILS)/tinyxml.o $(ROOTUTILS)/tinyxmlerror.o $(ROOTUTILS)/tinyxmlparser.o $(ROOTUTILS)/historyXmlWriter.o $(ROOTUTILS)/commandline.o $(ROOTUTILS)/visivoutils.o		
OBJIMPORTER= $(ROOTIMPORTER)/build/abstractsource.o $(ROOTIMPORTER)/build/binsource.o $(ROOTIMPORTER)/build/fitsimagesource.o $(ROOTIMPORTER)/build/flysource.o $(ROOTIMPORTER)/build/mainImporter.o $(ROOTIMPORTER)/build/ramsessource.o $(ROOTIMPORTER)/build/rawpointssource.o $(ROOTIMPORTER)/build/vosourcenew.o $(ROOTIMPORTER)/build/asciisource.o $(ROOTIMPORTER)/build/csvsource.o $(ROOTIMPORTER)/build/fitstablesource.o $(ROOTIMPORTER)/build/gadgetsource.o $(ROOTIMPORTER)/build/hdf5source.o $(ROOTIMPORTER)/build/muportalsource.o $(ROOTIMPORTER)/build/rawgridsource.o $(ROOTUTILS)/build/tinystr.o $(ROOTUTILS)/build/tinyxml.o $(ROOTUTILS)/build/tinyxmlerror.o $(ROOTUTILS)/build/tinyxmlparser.o $(ROOTUTILS)/build/historyXmlWriter.o $(ROOTUTILS)/build/commandline.o $(ROOTUTILS)/build/visivoutils.o

SRCFILTER= $(ROOTUTILS)/fparser.o $(ROOTFILTER)/vsLine.o $(ROOTFILTER)/vscoarsevolumeop.o $(ROOTFILTER)/vsmathop.o $(ROOTFILTER)/vsprinttableop.o	$(ROOTFILTER)/vsstatisticop.o $(ROOTFILTER)/fpoptimizer.o $(ROOTFILTER)/vsVector.o $(ROOTFILTER)/vscutop.o $(ROOTFILTER)/vsmergeop.o $(ROOTFILTER)/vsrandomizertableop.o $(ROOTFILTER)/vsswapop.o $(ROOTFILTER)/mainFilter.o $(ROOTFILTER)/vsVoxel.o $(ROOTFILTER)/vsdecimatorop.o $(ROOTFILTER)/vsmoduleop.o $(ROOTFILTER)/vsselectcolumnsop.o	$(ROOTUTILS)/vstable.o $(ROOTUTILS)/parametersparser.o $(ROOTFILTER)/vsaddidop.o $(ROOTFILTER)/vsexampleop.o $(ROOTFILTER)/vsmrcampos.o	$(ROOTFILTER)/vsselectfieldop.o $(ROOTFILTER)/vstableop.o $(ROOTUTILS)/tinystr.o $(ROOTFILTER)/vsextractlistrowsop.o $(ROOTFILTER)/vsmuportalop.o $(ROOTFILTER)/vsselectvol.o $(ROOTUTILS)/tinyxml.o $(ROOTFILTER)/vsextractsubvolumeop.o	$(ROOTUTILS)/vsobject.o $(ROOTFILTER)/vsshowtableop.o $(ROOTFILTER)/vsvisualop.o $(ROOTUTILS)/tinyxmlerror.o $(ROOTFILTER)/vsappend.o $(ROOTFILTER)/vsgrid2pointdistr.o	 $(ROOTFILTER)/vspointdistributeop.o $(ROOTFILTER)/vssigmacontoursop.o $(ROOTFILTER)/vsvollimit.o $(ROOTUTILS)/tinyxmlparser.o $(ROOTFILTER)/vschangecolnameop.o $(ROOTFILTER)/vsincludeop.o $(ROOTFILTER)/vspointpropertyop.o $(ROOTFILTER)/vssphereop.o $(ROOTFILTER)/vswrvotableop.o 	$(ROOTUTILS)/util.o $(ROOTFILTER)/vsclustercellop.o $(ROOTFILTER)/vsinterpolateop.o $(ROOTFILTER)/vspolarop.o $(ROOTFILTER)/vssplittableop.o $(ROOTUTILS)/historyXmlWriter.o $(ROOTFILTER)/startFilter.o
OBJFILTER=  $(ROOTUTILS)/build/fparser.o $(ROOTFILTER)/build/vsLine.o $(ROOTFILTER)/build/vscoarsevolumeop.o  $(ROOTFILTER)/build/vsmathop.o $(ROOTFILTER)/build/vsprinttableop.o $(ROOTFILTER)/build/vsstatisticop.o $(ROOTFILTER)/build/fpoptimizer.o  $(ROOTFILTER)/build/vsVector.o $(ROOTFILTER)/build/vscutop.o  $(ROOTFILTER)/build/vsmergeop.o  $(ROOTFILTER)/build/vsrandomizertableop.o $(ROOTFILTER)/build/vsswapop.o $(ROOTFILTER)/build/mainFilter.o $(ROOTFILTER)/build/vsVoxel.o $(ROOTFILTER)/build/vsdecimatorop.o $(ROOTFILTER)/build/vsmoduleop.o $(ROOTFILTER)/build/vsselectcolumnsop.o $(ROOTUTILS)/build/vstable.o $(ROOTUTILS)/build/parametersparser.o $(ROOTFILTER)/build/vsaddidop.o $(ROOTFILTER)/build/vsexampleop.o $(ROOTFILTER)/build/vsmrcampos.o $(ROOTFILTER)/build/vsselectfieldop.o $(ROOTFILTER)/build/vstableop.o $(ROOTUTILS)/build/tinystr.o $(ROOTFILTER)/build//vsextractlistrowsop.o $(ROOTFILTER)/build//vsmuportalop.o $(ROOTFILTER)/build//vsselectvol.o  $(ROOTUTILS)/build/tinyxml.o  $(ROOTFILTER)/build//vsextractsubvolumeop.o  $(ROOTUTILS)/build//vsobject.o  $(ROOTFILTER)/build//vsshowtableop.o  $(ROOTFILTER)/build//vsvisualop.o  $(ROOTUTILS)/build/tinyxmlerror.o  $(ROOTFILTER)/build//vsappend.o  $(ROOTFILTER)/build//vsgrid2pointdistr.o $(ROOTFILTER)/build//vspointdistributeop.o $(ROOTFILTER)/build//vssigmacontoursop.o $(ROOTFILTER)/build//vsvollimit.o  $(ROOTUTILS)/build//tinyxmlparser.o  $(ROOTFILTER)/build//vschangecolnameop.o $(ROOTFILTER)/build//vsincludeop.o $(ROOTFILTER)/build//vspointpropertyop.o $(ROOTFILTER)/build//vssphereop.o  $(ROOTFILTER)/build//vswrvotableop.o  $(ROOTUTILS)/build/util.o $(ROOTFILTER)/build//vsclustercellop.o $(ROOTFILTER)/build//vsinterpolateop.o $(ROOTFILTER)/build//vspolarop.o $(ROOTFILTER)/build//vssplittableop.o  $(ROOTUTILS)/build/historyXmlWriter.o  $(ROOTFILTER)/build//startFilter.o

SRCVSUTILS= $(ROOTVSUTILS)/mainUtils.o $(ROOTVSUTILS)/vscreatepath.o $(ROOTVSUTILS)/vsloadhistory.o $(ROOTVSUTILS)/vsutils.o $(ROOTVSUTILS)/vscreategenericslices.o	$(ROOTVSUTILS)/vscreateslices.o	$(ROOTVSUTILS)/vstextcol.o $(ROOTVSUTILS)/vuparametersparser.o $(ROOTUTILS)/vsobject.o $(ROOTUTILS)/visivoutils.o $(ROOTUTILS)/fparser.o  $(ROOTUTILS)/tinystr.o $(ROOTUTILS)/tinyxml.o $(ROOTUTILS)/tinyxmlerror.o $(ROOTUTILS)/tinyxmlparser.o $(ROOTUTILS)/parametersparser.o $(ROOTUTILS)/vstable.o
OBJVSUTILS= $(ROOTVSUTILS)/build/mainUtils.o $(ROOTVSUTILS)/build/vscreatepath.o $(ROOTVSUTILS)/build/vsloadhistory.o $(ROOTVSUTILS)/build//vsutils.o $(ROOTVSUTILS)/build/vscreategenericslices.o $(ROOTVSUTILS)/build/vscreateslices.o $(ROOTVSUTILS)/build/vstextcol.o $(ROOTVSUTILS)/build/vuparametersparser.o $(ROOTUTILS)/build/vsobject.o $(ROOTUTILS)/build/visivoutils.o $(ROOTUTILS)/build/fparser.o  $(ROOTUTILS)/build/tinystr.o $(ROOTUTILS)/build//tinyxml.o $(ROOTUTILS)/build//tinyxmlerror.o $(ROOTUTILS)/build//tinyxmlparser.o $(ROOTUTILS)/build/parametersparser.o $(ROOTUTILS)/build/vstable.o


SRCVIEWER=	$(ROOTVIEWER)/isosurfacepipe.o	$(ROOTVIEWER)/pipe.o $(ROOTVIEWER)/pointspipe.o $(ROOTVIEWER)/slicerpipe.o $(ROOTVIEWER)/volumepipe.o $(ROOTVIEWER)/vtkimagepipe.o $(ROOTVIEWER)/mainViewer.o $(ROOTVIEWER)/pointssmoothpipe.o $(ROOTVIEWER)/vectorpipe.o $(ROOTUTILS)/color.o $(ROOTUTILS)/tinyxml.o $(ROOTUTILS)/visivoutils.o $(ROOTUTILS)/historyXmlWriter.o $(ROOTUTILS)/tinyxmlerror.o $(ROOTUTILS)/vsobject.o $(ROOTUTILS)/extendedglyph3d.o	$(ROOTUTILS)/luteditor.o $(ROOTUTILS)/tinyxmlparser.o		$(ROOTUTILS)/vstable.o $(ROOTUTILS)/optionssetter.o $(ROOTUTILS)/tinystr.o $(ROOTFILTER)/vsstatisticop.o $(ROOTFILTER)/vstableop.o
#volumeslicer.o
OBJVIEWER=	$(ROOTVIEWER)/build/isosurfacepipe.o $(ROOTVIEWER)/build/pipe.o $(ROOTVIEWER)/build/pointspipe.o $(ROOTVIEWER)/build/slicerpipe.o  $(ROOTVIEWER)/build/volumepipe.o $(ROOTVIEWER)/build/vtkimagepipe.o $(ROOTVIEWER)/build/mainViewer.o $(ROOTVIEWER)/build/pointssmoothpipe.o  $(ROOTVIEWER)/build/vectorpipe.o   $(ROOTUTILS)/build/color.o $(ROOTUTILS)/build/tinyxml.o $(ROOTUTILS)/build/visivoutils.o $(ROOTUTILS)/build/historyXmlWriter.o $(ROOTUTILS)/build/tinyxmlerror.o $(ROOTUTILS)/build/vsobject.o $(ROOTUTILS)/build/extendedglyph3d.o $(ROOTUTILS)/build/luteditor.o $(ROOTUTILS)/build/tinyxmlparser.o $(ROOTUTILS)/build/vstable.o $(ROOTUTILS)/build/optionssetter.o $(ROOTUTILS)/build/tinystr.o $(ROOTFILTER)/build/vsstatisticop.o $(ROOTFILTER)/build/vstableop.o
#$(ROOTVIEWER)/build/volumeslicer.o
SPLOTCH=false
ifeq ($(SPLOTCH),true)
	CPPFLAGS:=-DSPLVISIVO
	SRCVSUTILS:=splotchpipecamera.o splotchpipe.o ./Splotch/kernel/transform.o ./Splotch/cxxsupport/announce.o		./Splotch/cxxsupport/ls_image.o		./Splotch/cxxsupport/paramfile.o		./Splotch/cxxsupport/walltimer.o ./Splotch/cxxsupport/error_handling.o	./Splotch/cxxsupport/mpi_support.o	./Splotch/cxxsupport/string_utils.o ./Splotch/reader/bin_reader.o			./Splotch/reader/gadget_reader.o		./Splotch/reader/mesh_reader.o			./Splotch/reader/visivo_reader.o ./Splotch/reader/bin_reader_mpi.o			./Splotch/reader/millenium_reader.o		./Splotch/reader/tipsy_reader.o   ./Splotch/reader/ramses_reader.o ./Splotch/splotch/scenemaker.o		./Splotch/splotch/splotch_host.o ./Splotch/splotch/splotch.o		./Splotch/splotch/splotchutils.o ./Splotch/booster/m_rotation.o		./Splotch/booster/mesh_creator.o		./Splotch/booster/p_selector.o		./Splotch/booster/randomizer.o ./Splotch/c_utils/walltime_c.o
	OBJVSUTILS:=$(ROOTVIEWER)/build/splotchpipecamera.o $(ROOTVIEWER)/build/splotchpipe.o $(ROOTVIEWER)/build/splotch_host.o $(ROOTVIEWER)/build/splotch.o $(ROOTVIEWER)/build/splotchutils.o $(ROOTVIEWER)/build/transform.o $(ROOTVIEWER)/build/announce.o $(ROOTVIEWER)/build/ls_image.o $(ROOTVIEWER)/build/paramfile.o $(ROOTVIEWER)/build/walltimer.o $(ROOTVIEWER)/build/error_handling.o $(ROOTVIEWER)/build/mpi_support.o $(ROOTVIEWER)/build/string_utils.o $(ROOTVIEWER)/build/bin_reader.o $(ROOTVIEWER)/build/gadget_reader.o $(ROOTVIEWER)/build/mesh_reader.o $(ROOTVIEWER)/build/visivo_reader.o $(ROOTVIEWER)/build/bin_reader_mpi.o $(ROOTVIEWER)/build/millenium_reader.o $(ROOTVIEWER)/build/tipsy_reader.o $(ROOTVIEWER)/build/ramses_reader.o $(ROOTVIEWER)/build/m_rotation.o $(ROOTVIEWER)/build/mesh_creator.o $(ROOTVIEWER)/build/p_selector.o $(ROOTVIEWER)/build/randomizer.o $(ROOTVIEWER)/build/walltime_c.o
endif

VTK_LIB=/opt/vtk-9.0.3/lib/
VTKDIR_INC=/opt/vtk-9.0.3/include/vtk-9.0/

INCLUDE = -I$(VSINC) -I$(ROOTIMPORTER) -I$(ROOTFILTER) -I$(ROOTUTILS) -I$(ROOTVSUTILS)  -I$(VTKDIR_INC) -I$(ROOTVIEWER)   -I/opt/local/include/ -I/usr/local/include/ -I$(CFITSIO)/include/ -I$(HDF5)/include/ -I$(CURL)/include

CPPFLAGS=  -DLIGHT -DMAC -std=c++17 

LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(HDF5)/lib -L$(CURL)/lib -L$(CFITSIO)/lib -L$(VTK_LIB)
LIB = -lcurl -lhdf5 -lcfitsio -lm

LIBVTK= -lvtkChartsCore-9.0 -lvtkCommonColor-9.0 -lvtkCommonComputationalGeometry-9.0 -lvtkCommonCore-9.0 -lvtkCommonDataModel-9.0 \
            -lvtkCommonExecutionModel-9.0 -lvtkCommonMath-9.0 -lvtkCommonMisc-9.0 -lvtkCommonSystem-9.0 -lvtkCommonTransforms-9.0 \
            -lvtkDICOMParser-9.0 -lvtkDomainsChemistry-9.0 -lvtkdoubleconversion-9.0 -lvtkexpat-9.0 -lvtkFiltersAMR-9.0 -lvtkFiltersCore-9.0 \
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

all: VisIVOImporter VisIVOFilter VisIVOUtils VisIVOViewer

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(dir $@)build/$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(dir $@)build/$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(dir $@)build/$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(dir $@)build/$(notdir $@)



VisIVOImporter: $(SRCIMPORTER)
	$(CPP) $(CPPFLAGS) -o VisIVOImporter $(OBJIMPORTER) $(INCLUDE) $(LIBRARYPATH) $(LIB)

VisIVOFilter: $(SRCFILTER)
	$(CPP) $(CPPFLAGS) -o VisIVOFilter $(OBJFILTER) $(INCLUDE) $(LIBRARYPATH) $(LIB)

VisIVOUtils: $(SRCVSUTILS)
	$(CPP) $(CPPFLAGS) -o VisIVOUtils $(OBJVSUTILS) $(INCLUDE) $(LIBRARYPATH) $(LIB)

VisIVOViewer: $(SRCVIEWER)
	$(CPP) $(CPPFLAGS) -o VisIVOViewer $(OBJVIEWER) $(INCLUDE) $(LIBRARYPATH) $(LIB) $(LIBVTK)

clean:
	rm -f $(ROOTIMPORTER)/*.o $(ROOTIMPORTER)/build/*.o $(ROOTFILTER)/*.o $(ROOTFILTER)/build/*.o $(ROOTVSUTILS)/*.o $(ROOTVIEWER)/*.o $(ROOTVIEWER)/build/*.o $(ROOTVSUTILS)/build/*.o $(ROOTUTILS)/*.o $(ROOTUTILS)/build/*.o ./src/Utils/build/*.o core
