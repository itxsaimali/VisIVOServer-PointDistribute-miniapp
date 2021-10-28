# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)


ROOTUTILS=/Users/fxbio6600/Downloads/VisIVOServer-master/VisIVOUtils
BUILDDIR=$(ROOTUTILS)/build

VSINC1=/Users/fxbio6600/Downloads/VisIVOServer-master//Utils 
BOOST=/opt/boost_1_75_0/
FILTERS=$(ROOTUTILS)/../VisIVOFilters/Filters/
CURL=/usr/

SRC= mainUtils.o			vscreatepath.o		vsloadhistory.o		vsutils.o vscreategenericslices.o	vscreateslices.o		vstextcol.o			vuparametersparser.o ../Utils/vsobject.o ../Utils/visivoutils.o ../Utils/fparser.o  ../Utils/tinystr.o ../Utils/tinyxml.o ../Utils/tinyxmlerror.o ../Utils/tinyxmlparser.o ../Utils/parametersparser.o ../Utils/vstable.o

OBJ= $(BUILDDIR)/mainUtils.o $(BUILDDIR)/vscreatepath.o $(BUILDDIR)/vsloadhistory.o $(BUILDDIR)/vsutils.o $(BUILDDIR)/vscreategenericslices.o $(BUILDDIR)/vscreateslices.o $(BUILDDIR)/vstextcol.o $(BUILDDIR)/vuparametersparser.o $(BUILDDIR)/vsobject.o $(BUILDDIR)/visivoutils.o $(BUILDDIR)/fparser.o  $(BUILDDIR)/tinystr.o $(BUILDDIR)/tinyxml.o $(BUILDDIR)/tinyxmlerror.o $(BUILDDIR)/tinyxmlparser.o $(BUILDDIR)/parametersparser.o $(BUILDDIR)/vstable.o

INCLUDE = -I$(ROOTUTILS) -I$(VSINC1) -I$(BOOST) -I$(FILTERS) 
CPPFLAGS= -DLIGHT 
LIB =  -L$(CURL)/lib -lcurl -lm


all: VisIVOUtils 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)


VisIVOUtils: $(SRC)
	$(CPP) $(CPPFLAGS) -o VisIVOUtils $(OBJ) $(INCLUDE) $(LIB)


	
clean:
	rm -f *.o build/*.o ../../Utils/*.o core
