# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rangasrichakravarthy/Desktop/Arith

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Arith.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Arith.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Arith.dir/flags.make

CMakeFiles/Arith.dir/main.cpp.o: CMakeFiles/Arith.dir/flags.make
CMakeFiles/Arith.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Arith.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Arith.dir/main.cpp.o -c /Users/rangasrichakravarthy/Desktop/Arith/main.cpp

CMakeFiles/Arith.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Arith.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rangasrichakravarthy/Desktop/Arith/main.cpp > CMakeFiles/Arith.dir/main.cpp.i

CMakeFiles/Arith.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Arith.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rangasrichakravarthy/Desktop/Arith/main.cpp -o CMakeFiles/Arith.dir/main.cpp.s

# Object files for target Arith
Arith_OBJECTS = \
"CMakeFiles/Arith.dir/main.cpp.o"

# External object files for target Arith
Arith_EXTERNAL_OBJECTS =

Arith: CMakeFiles/Arith.dir/main.cpp.o
Arith: CMakeFiles/Arith.dir/build.make
Arith: CMakeFiles/Arith.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Arith"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Arith.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Arith.dir/build: Arith
.PHONY : CMakeFiles/Arith.dir/build

CMakeFiles/Arith.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Arith.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Arith.dir/clean

CMakeFiles/Arith.dir/depend:
	cd /Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rangasrichakravarthy/Desktop/Arith /Users/rangasrichakravarthy/Desktop/Arith /Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug /Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug /Users/rangasrichakravarthy/Desktop/Arith/cmake-build-debug/CMakeFiles/Arith.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Arith.dir/depend
