# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /cygdrive/c/Users/Dell/AppData/Local/JetBrains/CLion2020.2/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Dell/AppData/Local/JetBrains/CLion2020.2/cygwin_cmake/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Dell/CLionProjects/A3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mt.dir/flags.make

CMakeFiles/mt.dir/multithreading.cpp.o: CMakeFiles/mt.dir/flags.make
CMakeFiles/mt.dir/multithreading.cpp.o: ../multithreading.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mt.dir/multithreading.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mt.dir/multithreading.cpp.o -c /cygdrive/c/Users/Dell/CLionProjects/A3/multithreading.cpp

CMakeFiles/mt.dir/multithreading.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mt.dir/multithreading.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Dell/CLionProjects/A3/multithreading.cpp > CMakeFiles/mt.dir/multithreading.cpp.i

CMakeFiles/mt.dir/multithreading.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mt.dir/multithreading.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Dell/CLionProjects/A3/multithreading.cpp -o CMakeFiles/mt.dir/multithreading.cpp.s

# Object files for target mt
mt_OBJECTS = \
"CMakeFiles/mt.dir/multithreading.cpp.o"

# External object files for target mt
mt_EXTERNAL_OBJECTS =

mt.exe: CMakeFiles/mt.dir/multithreading.cpp.o
mt.exe: CMakeFiles/mt.dir/build.make
mt.exe: CMakeFiles/mt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mt.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mt.dir/build: mt.exe

.PHONY : CMakeFiles/mt.dir/build

CMakeFiles/mt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mt.dir/clean

CMakeFiles/mt.dir/depend:
	cd /cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Dell/CLionProjects/A3 /cygdrive/c/Users/Dell/CLionProjects/A3 /cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug /cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug /cygdrive/c/Users/Dell/CLionProjects/A3/cmake-build-debug/CMakeFiles/mt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mt.dir/depend
