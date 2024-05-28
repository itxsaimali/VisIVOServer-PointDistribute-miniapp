cmake_minimum_required(VERSION 3.15)

project(VisIVOFilter CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(Boost REQUIRED)

set(FILTERS_SOURCE
    Filters/mainFilter.cpp
    Filters/startFilter.cpp
    Filters/startFilter.h
    Filters/vspointdistributeop.cpp
    Filters/vspointdistributeop.h
    Filters/vstableop.cpp
    Filters/vstableop.h
 
)

set(UTILS_SOURCE
    ${UTILS_SOURCE_DIR}/parametersparser.cpp
    ${UTILS_SOURCE_DIR}/parametersparser.h
    ${UTILS_SOURCE_DIR}/util.cpp
    ${UTILS_SOURCE_DIR}/util.h
    ${UTILS_SOURCE_DIR}/vsobject.cpp
    ${UTILS_SOURCE_DIR}/vsobject.h
    ${UTILS_SOURCE_DIR}/vstable.cpp
    ${UTILS_SOURCE_DIR}/vstable.h
)

add_executable(VisIVOFilter ${FILTERS_SOURCE} ${UTILS_SOURCE})

install(TARGETS VisIVOFilter DESTINATION bin)

target_include_directories(VisIVOFilter PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/Filters
    ${UTILS_SOURCE_DIR}
    ${Boost_INCLUDE_DIRS}
)
