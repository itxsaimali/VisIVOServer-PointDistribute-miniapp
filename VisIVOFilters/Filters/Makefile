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


OBJ=  $(BUILDDIR)/fparser.o  $(BUILDDIR)/vsLine.o  $(BUILDDIR)/vscoarsevolumeop.o  $(BUILDDIR)/vsmathop.o $(BUILDDIR)/vsprinttableop.o $(BUILDDIR)/vsstatisticop.o $(BUILDDIR)/fpoptimizer.o  $(BUILDDIR)/vsVector.o $(BUILDDIR)/vscutop.o  $(BUILDDIR)/vsmergeop.o  $(BUILDDIR)/vsrandomizertableop.o $(BUILDDIR)/vsswapop.o $(BUILDDIR)/mainFilter.o $(BUILDDIR)/vsVoxel.o $(BUILDDIR)/vsdecimatorop.o $(BUILDDIR)/vsmoduleop.o $(BUILDDIR)/vsselectcolumnsop.o $(BUILDDIR)/vstable.o $(BUILDDIR)/parametersparser.o $(BUILDDIR)/vsaddidop.o $(BUILDDIR)/vsexampleop.o $(BUILDDIR)/vsmrcampos.o $(BUILDDIR)/vsselectfieldop.o $(BUILDDIR)/vstableop.o $(BUILDDIR)/tinystr.o $(BUILDDIR)/vsextractlistrowsop.o $(BUILDDIR)/vsmuportalop.o $(BUILDDIR)/vsselectvol.o  $(BUILDDIR)/tinyxml.o  $(BUILDDIR)/vsextractsubvolumeop.o  $(BUILDDIR)/vsobject.o  $(BUILDDIR)/vsshowtableop.o  $(BUILDDIR)/vsvisualop.o  $(BUILDDIR)/tinyxmlerror.o  $(BUILDDIR)/vsappend.o  $(BUILDDIR)/vsgrid2pointdistr.o $(BUILDDIR)/vspointdistributeop.o $(BUILDDIR)/vssigmacontoursop.o $(BUILDDIR)/vsvollimit.o  $(BUILDDIR)/tinyxmlparser.o  $(BUILDDIR)/vschangecolnameop.o $(BUILDDIR)/vsincludeop.o $(BUILDDIR)/vspointpropertyop.o $(BUILDDIR)/vssphereop.o  $(BUILDDIR)/vswrvotableop.o  $(BUILDDIR)/util.o $(BUILDDIR)/vsclustercellop.o $(BUILDDIR)/vsinterpolateop.o $(BUILDDIR)/vspolarop.o $(BUILDDIR)/vssplittableop.o  $(BUILDDIR)/historyXmlWriter.o  $(BUILDDIR)/startFilter.o




INCLUDE = -I$(ROOTFILTER) -I$(VSINC) -I$(BOOST)
CPPFLAGS= -DLIGHT
LIB =  -lm


all: VisIVOFilter 

.SUFFIXES : .o .cpp .cc .c .cxx

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.cc.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.c.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)

.cxx.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE)  -c $< -o $(BUILDDIR)/$(notdir $@)


VisIVOFilter: $(SRC)
	$(CPP) $(CPPFLAGS) -o VisIVOFilter $(OBJ) $(INCLUDE) $(LIB)


	
clean:
	rm -f build/*.o *.o ../../Utils/*.o core
