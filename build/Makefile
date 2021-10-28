# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)

ROOTIMPORTER=../src/VisIVOImporter/Importers
ROOTFILTER= ../src/VisIVOFilters/Filters
ROOTVSUTILS= ../src/VisIVOUtils

ROOTUTILS=../src/Utils
VSINC=$(ROOTUTILS)

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



INCLUDE = -I$(ROOTIMPORTER) -I$(ROOTFILTER) -I$(VSINC) -I/opt/local/include/ -I/usr/local/include/ -I$(CFITSIO)/include/ -I$(HDF5)/include/ -I$(CURL)/include





CPPFLAGS= -DLIGHT
LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(HDF5)/lib -L$(CURL)/lib -L$(CFITSIO)/lib
LIB = -lcurl -lhdf5 -lcfitsio -lm


all: VisIVOImporter VisIVOFilter VisIVOUtils

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

clean:
	rm -f $(ROOTIMPORTER)/*.o $(ROOTIMPORTER)/build/*.o $(ROOTFILTER)/*.o $(ROOTFILTER)/build/*.o $(ROOTVSUTILS)/*.o $(ROOTVSUTILS)/build/*.o $(ROOTUTILS)/*.o $(ROOTUTILS)/build/*.o ../src/Utils/build/*.o core
