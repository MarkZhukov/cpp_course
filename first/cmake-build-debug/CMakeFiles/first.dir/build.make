# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lucky.mz/Documents/GitHub/cpp_course/first

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/first.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/first.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/first.dir/flags.make

CMakeFiles/first.dir/main.cpp.o: CMakeFiles/first.dir/flags.make
CMakeFiles/first.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/first.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/first.dir/main.cpp.o -c /Users/lucky.mz/Documents/GitHub/cpp_course/first/main.cpp

CMakeFiles/first.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/first.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lucky.mz/Documents/GitHub/cpp_course/first/main.cpp > CMakeFiles/first.dir/main.cpp.i

CMakeFiles/first.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/first.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lucky.mz/Documents/GitHub/cpp_course/first/main.cpp -o CMakeFiles/first.dir/main.cpp.s

CMakeFiles/first.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/first.dir/main.cpp.o.requires

CMakeFiles/first.dir/main.cpp.o.provides: CMakeFiles/first.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/first.dir/main.cpp.o.provides

CMakeFiles/first.dir/main.cpp.o.provides.build: CMakeFiles/first.dir/main.cpp.o


CMakeFiles/first.dir/CBlockList.cpp.o: CMakeFiles/first.dir/flags.make
CMakeFiles/first.dir/CBlockList.cpp.o: ../CBlockList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/first.dir/CBlockList.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/first.dir/CBlockList.cpp.o -c /Users/lucky.mz/Documents/GitHub/cpp_course/first/CBlockList.cpp

CMakeFiles/first.dir/CBlockList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/first.dir/CBlockList.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lucky.mz/Documents/GitHub/cpp_course/first/CBlockList.cpp > CMakeFiles/first.dir/CBlockList.cpp.i

CMakeFiles/first.dir/CBlockList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/first.dir/CBlockList.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lucky.mz/Documents/GitHub/cpp_course/first/CBlockList.cpp -o CMakeFiles/first.dir/CBlockList.cpp.s

CMakeFiles/first.dir/CBlockList.cpp.o.requires:

.PHONY : CMakeFiles/first.dir/CBlockList.cpp.o.requires

CMakeFiles/first.dir/CBlockList.cpp.o.provides: CMakeFiles/first.dir/CBlockList.cpp.o.requires
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/CBlockList.cpp.o.provides.build
.PHONY : CMakeFiles/first.dir/CBlockList.cpp.o.provides

CMakeFiles/first.dir/CBlockList.cpp.o.provides.build: CMakeFiles/first.dir/CBlockList.cpp.o


# Object files for target first
first_OBJECTS = \
"CMakeFiles/first.dir/main.cpp.o" \
"CMakeFiles/first.dir/CBlockList.cpp.o"

# External object files for target first
first_EXTERNAL_OBJECTS =

first: CMakeFiles/first.dir/main.cpp.o
first: CMakeFiles/first.dir/CBlockList.cpp.o
first: CMakeFiles/first.dir/build.make
first: CMakeFiles/first.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable first"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/first.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/first.dir/build: first

.PHONY : CMakeFiles/first.dir/build

CMakeFiles/first.dir/requires: CMakeFiles/first.dir/main.cpp.o.requires
CMakeFiles/first.dir/requires: CMakeFiles/first.dir/CBlockList.cpp.o.requires

.PHONY : CMakeFiles/first.dir/requires

CMakeFiles/first.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/first.dir/cmake_clean.cmake
.PHONY : CMakeFiles/first.dir/clean

CMakeFiles/first.dir/depend:
	cd /Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lucky.mz/Documents/GitHub/cpp_course/first /Users/lucky.mz/Documents/GitHub/cpp_course/first /Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug /Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug /Users/lucky.mz/Documents/GitHub/cpp_course/first/cmake-build-debug/CMakeFiles/first.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/first.dir/depend

