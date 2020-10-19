cmake_minimum_required(VERSION 3.17)
project(A3)

set(CMAKE_CXX_STANDARD 14)

add_executable(A3 A3.cpp)
add_executable(ob openblas.cpp)
add_executable(mt multithreading.cpp)