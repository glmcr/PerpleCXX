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
CMAKE_SOURCE_DIR = /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable

# Include any dependencies generated for this target.
include CMakeFiles/unsplt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/unsplt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unsplt.dir/flags.make

CMakeFiles/unsplt.dir/unsplt.f.o: CMakeFiles/unsplt.dir/flags.make
CMakeFiles/unsplt.dir/unsplt.f.o: unsplt.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/unsplt.dir/unsplt.f.o"
	/usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable/unsplt.f -o CMakeFiles/unsplt.dir/unsplt.f.o

CMakeFiles/unsplt.dir/unsplt.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/unsplt.dir/unsplt.f.i"
	/usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable/unsplt.f > CMakeFiles/unsplt.dir/unsplt.f.i

CMakeFiles/unsplt.dir/unsplt.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/unsplt.dir/unsplt.f.s"
	/usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable/unsplt.f -o CMakeFiles/unsplt.dir/unsplt.f.s

# Object files for target unsplt
unsplt_OBJECTS = \
"CMakeFiles/unsplt.dir/unsplt.f.o"

# External object files for target unsplt
unsplt_EXTERNAL_OBJECTS =

unsplt: CMakeFiles/unsplt.dir/unsplt.f.o
unsplt: CMakeFiles/unsplt.dir/build.make
unsplt: libperplex.a
unsplt: CMakeFiles/unsplt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable unsplt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unsplt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unsplt.dir/build: unsplt

.PHONY : CMakeFiles/unsplt.dir/build

CMakeFiles/unsplt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unsplt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unsplt.dir/clean

CMakeFiles/unsplt.dir/depend:
	cd /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable /home/zns/Data/PhD/Dev/tmp/PerpleXLookUpTableTest/perplex-stable/CMakeFiles/unsplt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unsplt.dir/depend

