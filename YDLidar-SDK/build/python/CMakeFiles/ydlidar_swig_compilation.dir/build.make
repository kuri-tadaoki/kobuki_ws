# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nwrlab/ydlsdk/YDLidar-SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nwrlab/ydlsdk/YDLidar-SDK/build

# Utility rule file for ydlidar_swig_compilation.

# Include the progress variables for this target.
include python/CMakeFiles/ydlidar_swig_compilation.dir/progress.make

python/CMakeFiles/ydlidar_swig_compilation: python/CMakeFiles/_ydlidar.dir/ydlidar_sdkPYTHON.stamp


python/CMakeFiles/_ydlidar.dir/ydlidar_sdkPYTHON.stamp: ../python/ydlidar_sdk.i
python/CMakeFiles/_ydlidar.dir/ydlidar_sdkPYTHON.stamp: ../python/ydlidar_sdk.i
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nwrlab/ydlsdk/YDLidar-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Swig compile ydlidar_sdk.i for python"
	cd /home/nwrlab/ydlsdk/YDLidar-SDK/build/python && /usr/bin/cmake -E make_directory /home/nwrlab/ydlsdk/YDLidar-SDK/build/python /home/nwrlab/ydlsdk/YDLidar-SDK/build/python/CMakeFiles/_ydlidar.dir
	cd /home/nwrlab/ydlsdk/YDLidar-SDK/build/python && /usr/bin/cmake -E touch /home/nwrlab/ydlsdk/YDLidar-SDK/build/python/CMakeFiles/_ydlidar.dir/ydlidar_sdkPYTHON.stamp
	cd /home/nwrlab/ydlsdk/YDLidar-SDK/build/python && /usr/bin/cmake -E env SWIG_LIB=/usr/share/swig4.0 /usr/bin/swig4.0 -python -module ydlidar -outdir /home/nwrlab/ydlsdk/YDLidar-SDK/build/python -c++ -interface _ydlidar -I/home/nwrlab/ydlsdk/YDLidar-SDK/. -I/home/nwrlab/ydlsdk/YDLidar-SDK/core -I/home/nwrlab/ydlsdk/YDLidar-SDK/src -I/home/nwrlab/ydlsdk/YDLidar-SDK -I/home/nwrlab/ydlsdk/YDLidar-SDK/build -I/home/nwrlab/ydlsdk/YDLidar-SDK/python -I/home/nwrlab/ydlsdk/YDLidar-SDK/.. -I/home/nwrlab/ydlsdk/YDLidar-SDK/build/python -I/usr/include/python3.8 -o /home/nwrlab/ydlsdk/YDLidar-SDK/build/python/CMakeFiles/_ydlidar.dir/ydlidar_sdkPYTHON_wrap.cxx /home/nwrlab/ydlsdk/YDLidar-SDK/python/ydlidar_sdk.i

ydlidar_swig_compilation: python/CMakeFiles/ydlidar_swig_compilation
ydlidar_swig_compilation: python/CMakeFiles/_ydlidar.dir/ydlidar_sdkPYTHON.stamp
ydlidar_swig_compilation: python/CMakeFiles/ydlidar_swig_compilation.dir/build.make

.PHONY : ydlidar_swig_compilation

# Rule to build all files generated by this target.
python/CMakeFiles/ydlidar_swig_compilation.dir/build: ydlidar_swig_compilation

.PHONY : python/CMakeFiles/ydlidar_swig_compilation.dir/build

python/CMakeFiles/ydlidar_swig_compilation.dir/clean:
	cd /home/nwrlab/ydlsdk/YDLidar-SDK/build/python && $(CMAKE_COMMAND) -P CMakeFiles/ydlidar_swig_compilation.dir/cmake_clean.cmake
.PHONY : python/CMakeFiles/ydlidar_swig_compilation.dir/clean

python/CMakeFiles/ydlidar_swig_compilation.dir/depend:
	cd /home/nwrlab/ydlsdk/YDLidar-SDK/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nwrlab/ydlsdk/YDLidar-SDK /home/nwrlab/ydlsdk/YDLidar-SDK/python /home/nwrlab/ydlsdk/YDLidar-SDK/build /home/nwrlab/ydlsdk/YDLidar-SDK/build/python /home/nwrlab/ydlsdk/YDLidar-SDK/build/python/CMakeFiles/ydlidar_swig_compilation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : python/CMakeFiles/ydlidar_swig_compilation.dir/depend

