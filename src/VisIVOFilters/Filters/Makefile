# Gaia GSRPar Makefile

COMPILER = /usr/bin/g++
COMPILERCPP = /usr/bin/g++

CC = $(COMPILER)
CPP= $(COMPILERCPP)


ROOTFILTER= /Users/fxbio6600/Downloads/VisIVOServer-master/VisIVOFilters/Filters
BUILDDIR=$(ROOTFILTER)/build
VSINC=/Users/fxbio6600/Downloads/VisIVOServer-master//Utils
BOOST=/opt/boost_1_75_0/

SRC= ../../Utils/fparser.o	vsLine.o			vscoarsevolumeop.o		vsmathop.o			vsprinttableop.o	vsstatisticop.o 	fpoptimizer.o		vsVector.o			vscutop.o			vsmergeop.o			vsrandomizertableop.o		vsswapop.o mainFilter.o			vsVoxel.o			vsdecimatorop.o		vsmoduleop.o	vsselectcolumnsop.o		../../Utils/vstable.o ../../Utils/parametersparser.o		vsaddidop.o		vsexampleop.o		vsmrcampos.o	vsselectfieldop.o		vstableop.o ../../Utils/tinystr.o		vsextractlistrowsop.o		vsmuportalop.o		vsselectvol.o			 ../../Utils/tinyxml.o				vsextractsubvolumeop.o	../../Utils/vsobject.o			vsshowtableop.o		vsvisualop.o ../../Utils/tinyxmlerror.o		vsappend.o			vsgrid2pointdistr.o		vspointdistributeop.o		vssigmacontoursop.o		vsvollimit.o ../../Utils/tinyxmlparser.o		vschangecolnameop.o		vsincludeop.o			vspointpropertyop.o		vssphereop.o			vswrvotableop.o 	../../Utils/util.o			vsclustercellop.o		vsinterpolateop.o		vspolarop.o		vssplittableop.o ../../Utils/historyXmlWriter.o startFilter.o


OBJ=  $(ROOTFILTER)/build//fparser.o  $(ROOTFILTER)/build//vsLine.o  $(ROOTFILTER)/build//vscoarsevolumeop.o  $(ROOTFILTER)/build//vsmathop.o $(ROOTFILTER)/build//vsprinttableop.o $(ROOTFILTER)/build//vsstatisticop.o $(ROOTFILTER)/build//fpoptimizer.o  $(ROOTFILTER)/build//vsVector.o $(ROOTFILTER)/build//vscutop.o  $(ROOTFILTER)/build//vsmergeop.o  $(ROOTFILTER)/build//vsrandomizertableop.o $(ROOTFILTER)/build//vsswapop.o $(ROOTFILTER)/build//mainFilter.o $(ROOTFILTER)/build//vsVoxel.o $(ROOTFILTER)/build//vsdecimatorop.o $(ROOTFILTER)/build//vsmoduleop.o $(ROOTFILTER)/build//vsselectcolumnsop.o $(ROOTFILTER)/build//vstable.o $(ROOTFILTER)/build//parametersparser.o $(ROOTFILTER)/build//vsaddidop.o $(ROOTFILTER)/build//vsexampleop.o $(ROOTFILTER)/build//vsmrcampos.o $(ROOTFILTER)/build//vsselectfieldop.o $(ROOTFILTER)/build//vstableop.o $(ROOTFILTER)/build//tinystr.o $(ROOTFILTER)/build//vsextractlistrowsop.o $(ROOTFILTER)/build//vsmuportalop.o $(ROOTFILTER)/build//vsselectvol.o  $(ROOTFILTER)/build//tinyxml.o  $(ROOTFILTER)/build//vsextractsubvolumeop.o  $(ROOTFILTER)/build//vsobject.o  $(ROOTFILTER)/build//vsshowtableop.o  $(ROOTFILTER)/build//vsvisualop.o  $(ROOTFILTER)/build//tinyxmlerror.o  $(ROOTFILTER)/build//vsappend.o  $(ROOTFILTER)/build//vsgrid2pointdistr.o $(ROOTFILTER)/build//vspointdistributeop.o $(ROOTFILTER)/build//vssigmacontoursop.o $(ROOTFILTER)/build//vsvollimit.o  $(ROOTFILTER)/build//tinyxmlparser.o  $(ROOTFILTER)/build//vschangecolnameop.o $(ROOTFILTER)/build//vsincludeop.o $(ROOTFILTER)/build//vspointpropertyop.o $(ROOTFILTER)/build//vssphereop.o  $(ROOTFILTER)/build//vswrvotableop.o  $(ROOTFILTER)/build//util.o $(ROOTFILTER)/build//vsclustercellop.o $(ROOTFILTER)/build//vsinterpolateop.o $(ROOTFILTER)/build//vspolarop.o $(ROOTFILTER)/build//vssplittableop.o  $(ROOTFILTER)/build//historyXmlWriter.o  $(ROOTFILTER)/build//startFilter.o




INCLUDE = -I$(ROOTFILTER) -I$(VSINC) -I$(BOOST)
CPPFLAGS= -DLIGHT
LIB =  -lm


all: VisIVOFilter 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(ROOTFILTER)/build//$(notdir $@)


VisIVOFilter: $(SRC)
	$(CPP) $(CPPFLAGS) -o VisIVOFilter $(OBJ) $(INCLUDE) $(LIB)


	
clean:
	rm -f build/*.o *.o ../../Utils/*.o core
