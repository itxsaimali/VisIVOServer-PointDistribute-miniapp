#!/bin/bash

ROOT=/Users/fxbio6600/OACT/VisIVOServer_svn_locale/branches/2.3/

cd $ROOT/VisIVOImporter/Importers/
make 

cd $ROOT/VisIVOFilters/Filters/
make

cd $ROOT/VisIVOViewer/Viewer/
make


cd $ROOT/VisIVOUtils/
make
