
cmake_minimum_required(VERSION 3.22)

# name of Cmake projecr
project(HELLOAPP)

# Make variables for the source files
set(SRC_FILES 
    main.cpp 
    src/calc.cpp)

#to search for cmake variables from cmd
# cmake --help
# cmake --help-variable-list
# cmake --help-variable-list | grep -i source

# message used to print variable or message for warning or fatal error or status in build process

message(STATUS "SRC_FILES has ${SRC_FILES}")
message(WARNING "file path is ${CMAKE_SOURCE_DIR}")

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

