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

# Utility rule file for tests_py_region.

# Include the progress variables for this target.
include src/CMakeFiles/tests_py_region.dir/progress.make

src/CMakeFiles/tests_py_region: src/py_region_test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Executing test py_region_test"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && ./py_region_test

tests_py_region: src/CMakeFiles/tests_py_region
tests_py_region: src/CMakeFiles/tests_py_region.dir/build.make

.PHONY : tests_py_region

# Rule to build all files generated by this target.
src/CMakeFiles/tests_py_region.dir/build: tests_py_region

.PHONY : src/CMakeFiles/tests_py_region.dir/build

src/CMakeFiles/tests_py_region.dir/clean:
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && $(CMAKE_COMMAND) -P CMakeFiles/tests_py_region.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/tests_py_region.dir/clean

src/CMakeFiles/tests_py_region.dir/depend:
	cd /home/sam/Documents/Devel/HTM/nupic.core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/src /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/src /home/sam/Documents/Devel/HTM/nupic.core/src/CMakeFiles/tests_py_region.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/tests_py_region.dir/depend

