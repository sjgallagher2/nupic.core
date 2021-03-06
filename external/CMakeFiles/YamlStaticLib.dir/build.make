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

# Utility rule file for YamlStaticLib.

# Include the progress variables for this target.
include external/CMakeFiles/YamlStaticLib.dir/progress.make

external/CMakeFiles/YamlStaticLib: external/CMakeFiles/YamlStaticLib-complete


external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-install
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-mkdir
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-update
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-patch
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-build
external/CMakeFiles/YamlStaticLib-complete: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/external/CMakeFiles
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/external/CMakeFiles/YamlStaticLib-complete
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-done

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-install: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib && /usr/bin/cmake -E echo_append
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-install

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Install/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/tmp/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E make_directory /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Download/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-mkdir

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-urlinfo.txt
ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (verify and extract) for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source && /usr/bin/cmake -P /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/verify-YamlStaticLib.cmake
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source && /usr/bin/cmake -P /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/extract-YamlStaticLib.cmake
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-update: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source/YamlStaticLib && /usr/bin/cmake -E echo_append
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source/YamlStaticLib && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-update

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-patch: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E echo_append
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-patch

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure: ThirdParty/tmp/YamlStaticLib/YamlStaticLib-cfgcmd.txt
ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-update
ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib && /usr/bin/cmake -DCMAKE_BUILD_TYPE= -DBUILD_SHARED_LIBS=OFF "-DCMAKE_C_FLAGS=  -fvisibility=hidden  -shared-libgcc -fdiagnostics-show-option -m64 -fPIC  -Wno-unused-variable -Wno-unused-parameter -Wno-incompatible-pointer-types -Wno-deprecated-declarations -pipe  -O2 -mtune=generic -fuse-ld=gold -fuse-linker-plugin -flto-report -flto  -DHAVE_UNISTD_H" -DCMAKE_INSTALL_PREFIX=/home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib -DCMAKE_AR:PATH=gcc-ar -DCMAKE_RANLIB:PATH=gcc-ranlib "-GUnix Makefiles" /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Source/YamlStaticLib
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure

ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-build: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/Documents/Devel/HTM/nupic.core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'YamlStaticLib'"
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib && $(MAKE)
	cd /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Build/YamlStaticLib && /usr/bin/cmake -E touch /home/sam/Documents/Devel/HTM/nupic.core/ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-build

YamlStaticLib: external/CMakeFiles/YamlStaticLib
YamlStaticLib: external/CMakeFiles/YamlStaticLib-complete
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-install
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-mkdir
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-download
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-update
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-patch
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-configure
YamlStaticLib: ThirdParty/Stamp/YamlStaticLib/YamlStaticLib-build
YamlStaticLib: external/CMakeFiles/YamlStaticLib.dir/build.make

.PHONY : YamlStaticLib

# Rule to build all files generated by this target.
external/CMakeFiles/YamlStaticLib.dir/build: YamlStaticLib

.PHONY : external/CMakeFiles/YamlStaticLib.dir/build

external/CMakeFiles/YamlStaticLib.dir/clean:
	cd /home/sam/Documents/Devel/HTM/nupic.core/external && $(CMAKE_COMMAND) -P CMakeFiles/YamlStaticLib.dir/cmake_clean.cmake
.PHONY : external/CMakeFiles/YamlStaticLib.dir/clean

external/CMakeFiles/YamlStaticLib.dir/depend:
	cd /home/sam/Documents/Devel/HTM/nupic.core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/external /home/sam/Documents/Devel/HTM/nupic.core /home/sam/Documents/Devel/HTM/nupic.core/external /home/sam/Documents/Devel/HTM/nupic.core/external/CMakeFiles/YamlStaticLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/CMakeFiles/YamlStaticLib.dir/depend

