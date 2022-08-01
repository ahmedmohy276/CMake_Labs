
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


# if(EXISTS ${CMAKE_SOURCE_DIR}/main.cpp)
#     message("File Exists")

# else()
# message(FATAL_ERROR "File not Exists")

# endif()


# add make file in lib to this make file
add_subdirectory(${CMAKE_SOURCE_DIR}/lib)

# name the executable file and the source files that will generate this executable
add_executable(hellobinary ${SRC_FILES})

#include the directory include because it has the header file.hpp so the compiler can see it
target_include_directories(hellobinary PUBLIC include/ lib/)

# link the executable file with the library in the make file in folder lib
# this is a static linking
target_link_libraries(hellobinary PUBLIC wifi_lib)


########################################################################################
# let's open CMAKECache in build file. it save some values declared to built in variables like generator

#to save variable in CMAKECache 
# option(CVar "BOOL var" TRUE)
# set(var2 TRUE CACHE BOOL "bool variable")
#message("Cache is ${var2}")

########################################################################################

########################################################################################
#compiler info : with this we can define variable during compilation without need to define them in header file

target_compile_definitions(hellobinary PUBLIC "STD_CXX=17")
target_compile_options(hellobinary PUBLIC -march=native)

########################################################################################
# install : it is used to copy files to another location

install(FILES "${PROJECT_BINARY_DIR}/hellobinary.exe"
        DESTINATION "${PROJECT_BINARY_DIR}/executable"
        )      
        
install(FILES 
       "${CMAKE_SOURCE_DIR}/lib/wifi.hpp"
       "${CMAKE_SOURCE_DIR}/include/calc.hpp"
       DESTINATION "${PROJECT_BINARY_DIR}/include"
       )
########################################################################################

# Configure file
set(PRODUCT_YEAR "2022")
# generate header file defaultconfig.h from input file defaultconfig.h.in
configure_file(defaultconfig.h.in defaultconfig.h)
target_include_directories(hellobinary PUBLIC ${PROJECT_BINARY_DIR})
########################################################################################
# file

# read file as its format
# FILE(READ "main.cpp" MAIN_Text)
# message("${MAIN_Text}")
# message("-------------------------------------------")

# read file as tring in one line
# FILE(STRINGS "main.cpp" MAIN_Text)
# message("${MAIN_Text}")
# message("-------------------------------------------")

# search for word and read its line
# FILE(STRINGS "main.cpp" MAIN_Text REGEX "^int")
# message("${MAIN_Text}")
# message("-------------------------------------------")

# get the paths of all c++ sources in the project
# FILE(GLOB_RECURSE SRCS "*.cpp")
# message("${SRCS}")
########################################################################################
# string

# read file and then replace word on it 

# FILE(READ "main.cpp" MAIN_Text)
# STRING(REGEX REPLACE "int" "void" OUT ${MAIN_Text})
# message("${OUT}")

########################################################################################
# macro vs function

set(glopalvariable 10)

# the difference between macro and function that macro can set value for glopalvariables
# but function consider any variable inside it as local
# w use PARENT_SCOPE to make effect on glopal variables inside functions

#function(funname x)
macro(funname x)
    message("${x}")
    message("${${x}}")
    set(glopalvariable 15)
    #set(glopalvariable 15 PARENT_SCOPE)

endmacro()
#endfunction()

message("${glopalvariable}")
funname(glopalvariable)
message("${glopalvariable}")

########################################################################################
# break and continue
# they are the same as in c

# while(TRUE)
#     message("hello")
#     break()
#     #continue()
# endwhile()

########################################################################################
# execute process
execute_process(COMMAND "ls")
########################################################################################






