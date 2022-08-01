cmake_minimum_required(VERSION 3.22)

message("Hello from lib")

# make library from those two files
add_library(wifi_lib
            wifi.cpp
            wifi.hpp)
