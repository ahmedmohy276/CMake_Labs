
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

########################################################################################
# if

# OFF 0 NO FALSE N "NOTFOUND" "IGNORE" --->Flse
if(DEBUG)
    set(DEBUGINFO "Author Ahmed Mohy")
    
endif()

# if(NOT DEBUD) !
# if(var1 AND var2)
# if(var1 OR var2)
# if(myval MATCHES regularexpressin)
# if(EXISTS file)
# if(var1 LESS var2)
# if(var1 GREATER var2)
# if(var1 EQUAL var2)
# if(TARGET wifi_lib)  --> ass_executable  add_library , add_custom_target

if(TARGET wifi_lib)
    message("wifi is available")

else()
    message(FATAL_ERROR "File not found")

endif()

########################################################################################
# # for loop
# foreach(F IN ITEMS A H M E D)
#     message(STATUS ${F})
# endforeach(F IN ITEMs A H M E D)

# # with list
# set(lst M O H Y)
# foreach(F IN LISTS lst)
#     message(STATUS ${F})    
# endforeach(F IN LISTS lst)

########################################################################################
# while loop

# set(var 10)

# while(var)
#     message(${var})
#     math(EXPR var "${var} - 1")
# endwhile(var)
########################################################################################
# function

function(happynewyear arg1)
    message("ARG1 ${arg1}")             # name of variable
    message("ARG1 ${${arg1}}")          # show values of list
    message("ARG1 ${ARGN}")             # extra argument
    message("ARG1 ${ARGC}")             # count of arguments
endfunction(happynewyear arg1)

set(var 2 0 2 2)
happynewyear(var jan)

# try to check ?
# PARENT_SCOPE

########################################################################################

########################################################################################
# let's open CMAKECache in build file. it save some values declared to built in variables like generator

#to save variable in CMAKECache 
# option(CVar "BOOL var" TRUE)
# set(var2 TRUE CACHE BOOL "bool variable")
message("Cache is ${var2}")

########################################################################################

# Configure file
set(PRODUCT_YEAR "2022")
# generate header file defaultconfig.h from input file defaultconfig.h.in
configure_file(defaultconfig.h.in defaultconfig.h)
target_include_directories(hellobinary PUBLIC ${PROJECT_BINARY_DIR})
########################################################################################


