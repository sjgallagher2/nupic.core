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
include external/CMakeFiles/aprutil-1-bundle.dir/depend.make

# Include the progress variables for this target.
include external/CMakeFiles/aprutil-1-bundle.dir/progress.make

# Include the compile flags for this target's objects.
include external/CMakeFiles/aprutil-1-bundle.dir/flags.make

external/aprutil-1-bundle_dummy.c++: ThirdParty/Install/AprUtil1StaticLib/lib/libaprutil-1.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating aprutil-1-bundle_dummy.c++"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/external/aprutil-1-bundle_dummy.c++

external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o: external/CMakeFiles/aprutil-1-bundle.dir/flags.make
external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o: external/aprutil-1-bundle_dummy.c++
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o -c /home/sam/Documents/Devel/HTM/nupic.core/external/aprutil-1-bundle_dummy.c++

external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.i"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/Devel/HTM/nupic.core/external/aprutil-1-bundle_dummy.c++ > CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.i

external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.s"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/Devel/HTM/nupic.core/external/aprutil-1-bundle_dummy.c++ -o CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.s

external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.requires:

.PHONY : external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.requires

external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.provides: external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.requires
	$(MAKE) -f external/CMakeFiles/aprutil-1-bundle.dir/build.make external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.provides.build
.PHONY : external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.provides

external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.provides.build: external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o


# Object files for target aprutil-1-bundle
aprutil__1__bundle_OBJECTS = \
"CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o"

# External object files for target aprutil-1-bundle
aprutil__1__bundle_EXTERNAL_OBJECTS =

external/libaprutil-1-bundle.a: external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o
external/libaprutil-1-bundle.a: external/CMakeFiles/aprutil-1-bundle.dir/build.make
external/libaprutil-1-bundle.a: external/CMakeFiles/aprutil-1-bundle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libaprutil-1-bundle.a"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && $(CMAKE_COMMAND) -P CMakeFiles/aprutil-1-bundle.dir/cmake_clean_target.cmake
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aprutil-1-bundle.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Combining \$$<TARGET_FILE:aprutil-1-bundle> for target aprutil-1-bundle from /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Install/AprUtil1StaticLib/lib/libaprutil-1.a."
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E remove /home/sam/Documents/Devel/HTM/nupic.core/external/libaprutil-1-bundle.a
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -DLIB_TARGET="aprutil-1-bundle" -DTARGET_LOCATION="/home/sam/Documents/Devel/HTM/nupic.core/external/libaprutil-1-bundle.a" -DSRC_LIB_LOCATIONS="/home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Install/AprUtil1StaticLib/lib/libaprutil-1.a" -DLIST_SEPARATOR=++++ -DBINARY_DIR="/home/sam/Documents/Devel/HTM/nupic.core/external" -DCMAKE_AR="gcc-ar" -P /home/sam/Documents/Devel/HTM/nupic.core/src/CombineUnixArchives.cmake

# Rule to build all files generated by this target.
external/CMakeFiles/aprutil-1-bundle.dir/build: external/libaprutil-1-bundle.a

.PHONY : external/CMakeFiles/aprutil-1-bundle.dir/build

external/CMakeFiles/aprutil-1-bundle.dir/requires: external/CMakeFiles/aprutil-1-bundle.dir/aprutil-1-bundle_dummy.c++.o.requires

.PHONY : external/CMakeFiles/aprutil-1-bundle.dir/requires

external/CMakeFiles/aprutil-1-bundle.dir/clean:
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && $(CMAKE_COMMAND) -P CMakeFiles/aprutil-1-bundle.dir/cmake_clean.cmake
.PHONY : external/CMakeFiles/aprutil-1-bundle.dir/clean

external/CMakeFiles/aprutil-1-bundle.dir/depend: external/aprutil-1-bundle_dummy.c++
	cd /home/sam/Documents/Devel/HTM/nupic.core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/external /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/external /home/sam/Documents/Devel/HTM/nupic.core/external/CMakeFiles/aprutil-1-bundle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/CMakeFiles/aprutil-1-bundle.dir/depend

