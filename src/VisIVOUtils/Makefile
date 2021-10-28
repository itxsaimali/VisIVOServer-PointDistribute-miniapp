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
OBJ= $(ROOTFILTER)/build//mainUtils.o $(ROOTFILTER)/build//vscreatepath.o $(ROOTFILTER)/build//vsloadhistory.o $(ROOTFILTER)/build//vsutils.o $(ROOTFILTER)/build//vscreategenericslices.o $(ROOTFILTER)/build//vscreateslices.o $(ROOTFILTER)/build//vstextcol.o $(ROOTFILTER)/build//vuparametersparser.o $(ROOTFILTER)/build//vsobject.o $(ROOTFILTER)/build//visivoutils.o $(ROOTFILTER)/build//fparser.o  $(ROOTFILTER)/build//tinystr.o $(ROOTFILTER)/build//tinyxml.o $(ROOTFILTER)/build//tinyxmlerror.o $(ROOTFILTER)/build//tinyxmlparser.o $(ROOTFILTER)/build//parametersparser.o $(ROOTFILTER)/build//vstable.o

INCLUDE = -I$(ROOTUTILS) -I$(VSINC1) -I$(BOOST) -I$(FILTERS) 
CPPFLAGS= -DLIGHT 
LIB =  -L$(CURL)/lib -lcurl -lm


all: VisIVOUtils 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)


VisIVOUtils: $(SRC)
	$(CPP) $(CPPFLAGS) -o VisIVOUtils $(OBJ) $(INCLUDE) $(LIB)


	
clean:
	rm -f *.o build/*.o ../../Utils/*.o core
