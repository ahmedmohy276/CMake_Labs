cmake_minimum_required(VERSION 3.22)

# this line will till cmake that this code will not run on my pc
# but it will compile and run at external target
set(CMAKE_SYSTEM_NAME Generic)

# these lines force cmake to use avr c/c++ compiler and not to use MinGW compiler by default
set(CMAKE_CXX_COMPILER avr-g++ CACHE STRING "C++ compiler" FORCE)
set(CCMAKE_C_COMPILER avr-gcc CACHE STRING "C compiler" FORCE)
set(CMAKE_OBJCOPY avr-objcopy CACHE STRING "avr-objcopy" FORCE)

set(CMAKE_CXX_FLAGS "-mmcu=atmega32 -O1 -DF_CPU=8000000UL")

################################################################################################
project(LEDBlink CXX)

file(GLOB_RECURSE SRCS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.cpp *.h)

# message("${SRCS}")

string(REGEX REPLACE "build/[^;]+;?" "" SRCS "${SRCS}")

# message("${SRCS}")

################################################################################################

add_executable(${PROJECT_NAME}.elf ${SRCS})

# formating
# this line to generate hex file frol elf file
# the use of ALL that when i write command make it will include flashing and convert .elf to hex
# without ALL you should run command "make flash" 
add_custom_target(flash ALL
                DEPENDS ${PROJECT_NAME}.elf
                COMMAND avr-objcopy -j .text -j .data -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex
                )     
                
################################################################################################
# we can put "DEPENDS ${PROJECT_NAME}.hex "instead of "DEPENDS flash"

add_custom_target(run
                DEPENDS flash
                COMMAND avrdude.exe -c usbasp -p m32 -B 0.5 -U flash:w:"${PROJECT_NAME}.hex":a
                )       

