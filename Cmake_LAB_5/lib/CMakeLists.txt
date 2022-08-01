cmake_minimum_required(VERSION 3.22)

message("Hello from lib")

# make library from those two files
add_library(wifi_lib
            wifi.cpp
            wifi.hpp)


###################################################################################
# important variables 

# message(STATUS "FROM lib : CMAKE SOURCE DIR  ${CMAKE_SOURCE_DIR}")
# message(STATUS "FROM lib : CMAKE CURRENT SOURCE DIR  ${CMAKE_CURRENT_SOURCE_DIR}")

# message(STATUS "FROM lib : CMAKE BINARY DIR  ${CMAKE_BINARY_DIR}")
# message(STATUS "FROM lib : CMAKE CURRENT BINARY DIR  ${CMAKE_CURRENT_BINARY_DIR}")

#message(STATUS "CMAKE GENERATOR  ${CMAKE_GENERATOR}")

########################################################################################

