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

OBJ= $(ROOTFILTER)/build//abstractsource.o $(ROOTFILTER)/build//binsource.o $(ROOTFILTER)/build//fitsimagesource.o $(ROOTFILTER)/build//flysource.o $(ROOTFILTER)/build//mainImporter.o $(ROOTFILTER)/build//ramsessource.o $(ROOTFILTER)/build//rawpointssource.o $(ROOTFILTER)/build//vosourcenew.o $(ROOTFILTER)/build//asciisource.o $(ROOTFILTER)/build//csvsource.o $(ROOTFILTER)/build//fitstablesource.o $(ROOTFILTER)/build//gadgetsource.o $(ROOTFILTER)/build//hdf5source.o $(ROOTFILTER)/build//muportalsource.o $(ROOTFILTER)/build//rawgridsource.o $(ROOTFILTER)/build//tinystr.o $(ROOTFILTER)/build//tinyxml.o $(ROOTFILTER)/build//tinyxmlerror.o $(ROOTFILTER)/build//tinyxmlparser.o $(ROOTFILTER)/build//historyXmlWriter.o $(ROOTFILTER)/build//commandline.o $(ROOTFILTER)/build//visivoutils.o

INCLUDE = -I$(ROOTIMPORTER) -I$(VSINC) -I/opt/local/include/ -I/usr/local/include/ -I$(CFITSIO)/include/ -I$(HDF5)/include/ -I$(CURL)/include
CPPFLAGS= -DLIGHT
LIBRARYPATH =-L/usr/local/lib -L/opt/local/lib -L$(HDF5)/lib -L$(CURL)/lib -L$(CFITSIO)/lib
LIB = -lcurl -lhdf5 -lcfitsio -lm


all: VisIVOImporter 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)



VisIVOImporter: $(SRC)
	$(CPP) $(CPPFLAGS) -o VisIVOImporter $(OBJ) $(INCLUDE) $(LIBRARYPATH) $(LIB)


	
clean:
	rm -f *.o ../../Utils/*.o core
