# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/sam/Documents/Devel/HTM/nupic.core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sam/Documents/Devel/HTM/nupic.core

# Include any dependencies generated for this target.
include src/CMakeFiles/cpp_region_test.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/cpp_region_test.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/cpp_region_test.dir/flags.make

src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o: src/CMakeFiles/cpp_region_test.dir/flags.make
src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o: src/test/integration/CppRegionTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o -c /home/sam/Documents/Devel/HTM/nupic.core/src/test/integration/CppRegionTest.cpp

src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.i"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/Devel/HTM/nupic.core/src/test/integration/CppRegionTest.cpp > CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.i

src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.s"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/Devel/HTM/nupic.core/src/test/integration/CppRegionTest.cpp -o CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.s

src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.requires:

.PHONY : src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.requires

src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.provides: src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/cpp_region_test.dir/build.make src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.provides.build
.PHONY : src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.provides

src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.provides.build: src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o


# Object files for target cpp_region_test
cpp_region_test_OBJECTS = \
"CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o"

# External object files for target cpp_region_test
cpp_region_test_EXTERNAL_OBJECTS =

src/cpp_region_test: src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o
src/cpp_region_test: src/CMakeFiles/cpp_region_test.dir/build.make
src/cpp_region_test: src/libnupic_core.a
src/cpp_region_test: /usr/lib/x86_64-linux-gnu/libpython2.7.so
src/cpp_region_test: src/CMakeFiles/cpp_region_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp_region_test"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_region_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/cpp_region_test.dir/build: src/cpp_region_test

.PHONY : src/CMakeFiles/cpp_region_test.dir/build

src/CMakeFiles/cpp_region_test.dir/requires: src/CMakeFiles/cpp_region_test.dir/test/integration/CppRegionTest.cpp.o.requires

.PHONY : src/CMakeFiles/cpp_region_test.dir/requires

src/CMakeFiles/cpp_region_test.dir/clean:
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && $(CMAKE_COMMAND) -P CMakeFiles/cpp_region_test.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/cpp_region_test.dir/clean

src/CMakeFiles/cpp_region_test.dir/depend:
	cd /home/sam/Documents/Devel/HTM/nupic.core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/src /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/src /home/sam/Documents/Devel/HTM/nupic.core/src/CMakeFiles/cpp_region_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/cpp_region_test.dir/depend
