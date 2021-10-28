#!/bin/bash

ROOT=/Users/ube/VisIVOServer_OACT/2.3/

cd $ROOT/VisIVOImporter/Importers/
make 

cd $ROOT/VisIVOFilters/Filters/
make

cd $ROOT/VisIVOViewer/Viewer/
make


cd $ROOT/VisIVOUtils/
make