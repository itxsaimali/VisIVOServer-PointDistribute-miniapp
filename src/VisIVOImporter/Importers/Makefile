# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)

ROOTIMPORTER=/Users/fxbio6600/Downloads/VisIVOServer-master/VisIVOImporter/Importers
BUILDDIR=$(ROOTIMPORTER)/build
VSINC=/Users/fxbio6600/Downloads/VisIVOServer-master/Utils

HDF5=/usr/local/
CURL=/opt/curl7_19_4/
CFITSIO=/opt/cfitsio-3.49

SRC=	abstractsource.o	binsource.o		fitsimagesource.o	flysource.o			mainImporter.o	ramsessource.o	rawpointssource.o	vosourcenew.o asciisource.o		csvsource.o		fitstablesource.o	gadgetsource.o	hdf5source.o		muportalsource.o	rawgridsource.o ../../Utils/tinystr.o		../../Utils/tinyxml.o		../../Utils/tinyxmlerror.o	../../Utils/tinyxmlparser.o	../../Utils/historyXmlWriter.o ../../Utils/commandline.o ../../Utils/visivoutils.o		

OBJ= $(BUILDDIR)/abstractsource.o $(BUILDDIR)/binsource.o $(BUILDDIR)/fitsimagesource.o $(BUILDDIR)/flysource.o $(BUILDDIR)/mainImporter.o $(BUILDDIR)/ramsessource.o $(BUILDDIR)/rawpointssource.o $(BUILDDIR)/vosourcenew.o $(BUILDDIR)/asciisource.o $(BUILDDIR)/csvsource.o $(BUILDDIR)/fitstablesource.o $(BUILDDIR)/gadgetsource.o $(BUILDDIR)/hdf5source.o $(BUILDDIR)/muportalsource.o $(BUILDDIR)/rawgridsource.o $(BUILDDIR)/tinystr.o $(BUILDDIR)/tinyxml.o $(BUILDDIR)/tinyxmlerror.o $(BUILDDIR)/tinyxmlparser.o $(BUILDDIR)/historyXmlWriter.o $(BUILDDIR)/commandline.o $(BUILDDIR)/visivoutils.o

INCLUDE = -I$(ROOTIMPORTER) -I$(VSINC) -I/opt/local/include/ -I/usr/local/include/ -I$(CFITSIO)/include/ -I$(HDF5)/include/ -I$(CURL)/include
CPPFLAGS= -DLIGHT
LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(HDF5)/lib -L$(CURL)/lib -L$(CFITSIO)/lib
LIB = -lcurl -lhdf5 -lcfitsio -lm


all: VisIVOImporter 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)



VisIVOImporter: $(SRC)
	$(CPP) $(CPPFLAGS) -o VisIVOImporter $(OBJ) $(INCLUDE) $(LIBRARYPATH) $(LIB)


	
clean:
	rm -f *.o ../../Utils/*.o core
