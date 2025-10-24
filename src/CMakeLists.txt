cmake_minimum_required(VERSION 3.17)

project(VisIVOServer)

find_package(OpenMP REQUIRED)

# Set a default build type if none was specified
set(default_build_type "Release")
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
    set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE
        STRING "Choose the type of build." FORCE
    )
    # Set the possible values of build type for cmake-gui
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
        "Debug" "Release" "MinSizeRel" "RelWithDebInfo"
    )
endif()
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set(UTILS_SOURCE_DIR "${CMAKE_SOURCE_DIR}/Utils")
set(FILTERS_SOURCE_DIR "${CMAKE_SOURCE_DIR}/VisIVOFilters")

include_directories(${CMAKE_SOURCE_DIR})

add_subdirectory(${FILTERS_SOURCE_DIR})

add_definitions(-DVSMPI)

if(OpenMP_CXX_FOUND)
    # The `OpenMP::OpenMP_CXX` imported target correctly handles all compiler and linker flags.
    target_link_libraries(VisIVOFilter PRIVATE OpenMP::OpenMP_CXX)
endif()
