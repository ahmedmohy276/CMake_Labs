
cmake_minimum_required(VERSION 3.22)

# name of Cmake projecr
# MAJOR=3  MINOR=2
project(HELLOAPP VERSION 3.2)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)


# Make variable for the source files
set(SRC_FILES 
    main.cpp 
    src/calc.cpp)

#another way to set variables 
#set(SRC_FILES "main.cpp ;src/calc.cpp")


#to search for cmake variables from cmd
# cmake --help
# cmake --help-variable-list
# cmake --help-variable-list | grep -i source


if(EXISTS ${CMAKE_SOURCE_DIR}/main.cpp)
    message("File Exists")

else()
message(FATAL_ERROR "File not Exists")

endif()


# add make file in lib to this make file
add_subdirectory(${CMAKE_SOURCE_DIR}/lib)

# name the executable file and the source files that will generate this executable
add_executable(hellobinary ${SRC_FILES})

#include the directory include because it has the header file.hpp so the compiler can see it
target_include_directories(hellobinary PUBLIC include/ lib/)

# link the executable file with the library in the make file in folder lib
# this is a static linking
target_link_libraries(hellobinary PUBLIC wifi_lib)


###################################################################################
# important variables 

# message(STATUS "CMAKE SOURCE DIR  ${CMAKE_SOURCE_DIR}")
# message(STATUS "CMAKE CURRENT SOURCE DIR  ${CMAKE_CURRENT_SOURCE_DIR}")

# message(STATUS "CMAKE BINARY DIR  ${CMAKE_BINARY_DIR}")
# message(STATUS "CMAKE CURRENT BINARY DIR  ${CMAKE_CURRENT_BINARY_DIR}")

# message(STATUS "CMAKE GENERATOR  ${CMAKE_GENERATOR}")

########################################################################################



########################################################################################
#set values in built in variable
# example : to set the standard of c++ used 
# USE C++ 14
#set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_CXX_STANDARD_REQUIRED True)
# MESSAGE(STATUS "Show c++ standard : ${CMAKE_CXX_STANDARD}")
# message(STATUS "Show c++ standard Required : ${CMAKE_CXX_STANDARD_REQUIRED}")

########################################################################################

########################################################################################
# Environment variables
# message(STATUS "PATH  :  $ENV{PATH}")
########################################################################################


########################################################################################
# Set value on argument options
# we can pass the value of myvalue on running cmake command to be like : cmake -Dmyvalue=10
# message(STATUS "Argument value is ${myvalue}")
########################################################################################
# Configure file
set(PRODUCT_YEAR "2022")
# generate header file defaultconfig.h from input file defaultconfig.h.in
configure_file(defaultconfig.h.in defaultconfig.h)
target_include_directories(hellobinary PUBLIC ${PROJECT_BINARY_DIR})

