# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build"

# Include any dependencies generated for this target.
include lib/CMakeFiles/wifi_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/CMakeFiles/wifi_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/wifi_lib.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/wifi_lib.dir/flags.make

lib/CMakeFiles/wifi_lib.dir/wifi.cpp.obj: lib/CMakeFiles/wifi_lib.dir/flags.make
lib/CMakeFiles/wifi_lib.dir/wifi.cpp.obj: ../lib/wifi.cpp
lib/CMakeFiles/wifi_lib.dir/wifi.cpp.obj: lib/CMakeFiles/wifi_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/wifi_lib.dir/wifi.cpp.obj"
	cd /d "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" && C:\PROGRA~1\CODEBL~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/wifi_lib.dir/wifi.cpp.obj -MF CMakeFiles\wifi_lib.dir\wifi.cpp.obj.d -o CMakeFiles\wifi_lib.dir\wifi.cpp.obj -c "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\lib\wifi.cpp"

lib/CMakeFiles/wifi_lib.dir/wifi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wifi_lib.dir/wifi.cpp.i"
	cd /d "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" && C:\PROGRA~1\CODEBL~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\lib\wifi.cpp" > CMakeFiles\wifi_lib.dir\wifi.cpp.i

lib/CMakeFiles/wifi_lib.dir/wifi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wifi_lib.dir/wifi.cpp.s"
	cd /d "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" && C:\PROGRA~1\CODEBL~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\lib\wifi.cpp" -o CMakeFiles\wifi_lib.dir\wifi.cpp.s

# Object files for target wifi_lib
wifi_lib_OBJECTS = \
"CMakeFiles/wifi_lib.dir/wifi.cpp.obj"

# External object files for target wifi_lib
wifi_lib_EXTERNAL_OBJECTS =

lib/libwifi_lib.a: lib/CMakeFiles/wifi_lib.dir/wifi.cpp.obj
lib/libwifi_lib.a: lib/CMakeFiles/wifi_lib.dir/build.make
lib/libwifi_lib.a: lib/CMakeFiles/wifi_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libwifi_lib.a"
	cd /d "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" && $(CMAKE_COMMAND) -P CMakeFiles\wifi_lib.dir\cmake_clean_target.cmake
	cd /d "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\wifi_lib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/wifi_lib.dir/build: lib/libwifi_lib.a
.PHONY : lib/CMakeFiles/wifi_lib.dir/build

lib/CMakeFiles/wifi_lib.dir/clean:
	cd /d "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" && $(CMAKE_COMMAND) -P CMakeFiles\wifi_lib.dir\cmake_clean.cmake
.PHONY : lib/CMakeFiles/wifi_lib.dir/clean

lib/CMakeFiles/wifi_lib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5" "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\lib" "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build" "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib" "E:\IMT ARM Embedded System Diploma\cmake\Cmake Labs\Cmake_LAB_5\build\lib\CMakeFiles\wifi_lib.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : lib/CMakeFiles/wifi_lib.dir/depend

