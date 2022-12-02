# Dependencies installation
Prerequisites:
- CMake (>= 3.19.4).

## CFITSIO 4.1.0
1. `$ wget http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio-4.1.0.tar.gz`
1. `$ tar xzf cfitsio-4.1.0.tar.gz`
1. `$ cd cfitsio-4.1.0`
1. `$ ./configure --prefix=/usr/local`
1. `$ make`
1. `$ sudo make install`

#### NOTE: if you're on an Apple Silicon Mac use the following configure command instead:
`$ ./configure --prefix=/usr/local CC=clang CFLAGS="-arch x86_64"`

## CURL 7.86.0
1. `$ wget https://curl.se/download/curl-7.86.0.tar.gz`
1. `$ tar xzf curl-7.86.0.tar.gz`
1. `$ cd curl-7.86.0`
1. `$ ./configure --with-openssl --prefix=/usr/local`
1. `$ make`
1. `$ sudo make install`

## HDF5 1.12.2
1. `$ wget https://hdf-wordpress-1.s3.amazonaws.com/wp-content/uploads/manual/HDF5/HDF5_1_12_2/source/hdf5-1.12.2.tar.gz`
1. `$ tar xzf hdf5-1.12.2.tar.gz`
1. `$ cd hdf5-1.12.2.tar.gz`
1. `$ ./configure --prefix=/usr/local`
1. `$ make`
1. `$ sudo make install`

## VTK 9.1.0
1. `$ wget https://www.vtk.org/files/release/9.1/VTK-9.1.0.tar.gz`
1. `$ tar xzf VTK-9.1.0.tar.gz`
1. `$ mkdir VTK-9.1.0/build && cd VTK-9.1.0/build`
1. `$ cmake ..`
1. `$ make`
1. `$ sudo make install`

#### NOTE: if you're on an Apple Silicon Mac add the following argument to cmake:
`cmake -DCMAKE_OSX_ARCHITECTURES=x86_64 ..`

## Boost 1.78.0 (Headers only)
1. `$ wget https://boostorg.jfrog.io/artifactory/main/release/1.78.0/source/boost_1_78_0.tar.gz`
1. `$ tar xzf boost_1_78_0.tar.gz`
1. `$ cd boost_1_78_0`
1. `$ sudo cp -r boost /usr/local/include`

# Building and install VisIVOServer
1. `$ git clone https://github.com/VisIVOLab/VisIVOServer`
1. `$ mkdir VisIVOServer/src/build && cd VisIVOServer/src/build`
1. `$ cmake ..`
1. `$ make`
1. `$ sudo make install`
