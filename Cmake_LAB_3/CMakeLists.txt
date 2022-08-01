
cmake_minimum_required(VERSION 3.22)

project(HELLOAPP)

# Make variables for the source files
set(SRC_FILES 
    main.cpp 
    src/calc.cpp)

#to search for cmake variables from cmd
# cmake --help
# cmake --help-variable-list
# cmake --help-variable-list | grep -i source

# message used to print variable or message for warning or fatal error or status

message(STATUS "SRC_FILES has ${SRC_FILES}")
message(WARNING "file path is ${CMAKE_SOURCE_DIR}")

if(EXISTS ${CMAKE_SOURCE_DIR}/main.cpp)
    message("File Exists")

else()
message(FATAL_ERROR "File not Exists")

endif()


add_executable(hellobinary ${SRC_FILES})

target_include_directories(hellobinary PUBLIC include/)

