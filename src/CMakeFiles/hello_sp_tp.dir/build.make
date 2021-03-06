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
include src/CMakeFiles/hello_sp_tp.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/hello_sp_tp.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/hello_sp_tp.dir/flags.make

src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o: src/CMakeFiles/hello_sp_tp.dir/flags.make
src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o: src/examples/algorithms/HelloSP_TP.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o -c /home/sam/Documents/Devel/HTM/nupic.core/src/examples/algorithms/HelloSP_TP.cpp

src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.i"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/Devel/HTM/nupic.core/src/examples/algorithms/HelloSP_TP.cpp > CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.i

src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.s"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/Devel/HTM/nupic.core/src/examples/algorithms/HelloSP_TP.cpp -o CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.s

src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.requires:

.PHONY : src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.requires

src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.provides: src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/hello_sp_tp.dir/build.make src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.provides.build
.PHONY : src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.provides

src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.provides.build: src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o


# Object files for target hello_sp_tp
hello_sp_tp_OBJECTS = \
"CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o"

# External object files for target hello_sp_tp
hello_sp_tp_EXTERNAL_OBJECTS =

src/hello_sp_tp: src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o
src/hello_sp_tp: src/CMakeFiles/hello_sp_tp.dir/build.make
src/hello_sp_tp: src/libnupic_core.a
src/hello_sp_tp: /usr/lib/x86_64-linux-gnu/libpython2.7.so
src/hello_sp_tp: src/CMakeFiles/hello_sp_tp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hello_sp_tp"
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_sp_tp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/hello_sp_tp.dir/build: src/hello_sp_tp

.PHONY : src/CMakeFiles/hello_sp_tp.dir/build

src/CMakeFiles/hello_sp_tp.dir/requires: src/CMakeFiles/hello_sp_tp.dir/examples/algorithms/HelloSP_TP.cpp.o.requires

.PHONY : src/CMakeFiles/hello_sp_tp.dir/requires

src/CMakeFiles/hello_sp_tp.dir/clean:
	cd /home/sam/Documents/Devel/HTM/nupic.core/src && $(CMAKE_COMMAND) -P CMakeFiles/hello_sp_tp.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/hello_sp_tp.dir/clean

src/CMakeFiles/hello_sp_tp.dir/depend:
	cd /home/sam/Documents/Devel/HTM/nupic.core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/src /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/src /home/sam/Documents/Devel/HTM/nupic.core/src/CMakeFiles/hello_sp_tp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/hello_sp_tp.dir/depend

