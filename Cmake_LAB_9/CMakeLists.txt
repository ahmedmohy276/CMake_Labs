
cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
# name of Cmake projecr
project(packageproject)

########################################################################################
set(CMAKE_PREFIX_PATH "C:/Users/ahmed/vcpkg/installed/x86-windows/share")

#find_package(fmt CONFIG REQUIRED)
find_package(unofficial-sqlite3 CONFIG REQUIRED)

add_executable(runbinary main.cpp)

#target_link_libraries(runbinary PRIVATE fmt::fmt)
target_link_libraries(runbinary PRIVATE unofficial::sqlite3::sqlite3)


