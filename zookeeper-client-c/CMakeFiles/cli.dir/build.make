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
CMAKE_SOURCE_DIR = /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c

# Include any dependencies generated for this target.
include CMakeFiles/cli.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cli.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cli.dir/flags.make

CMakeFiles/cli.dir/src/cli.c.o: CMakeFiles/cli.dir/flags.make
CMakeFiles/cli.dir/src/cli.c.o: src/cli.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cli.dir/src/cli.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/src/cli.c.o   -c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/cli.c

CMakeFiles/cli.dir/src/cli.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/src/cli.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/cli.c > CMakeFiles/cli.dir/src/cli.c.i

CMakeFiles/cli.dir/src/cli.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/src/cli.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/cli.c -o CMakeFiles/cli.dir/src/cli.c.s

# Object files for target cli
cli_OBJECTS = \
"CMakeFiles/cli.dir/src/cli.c.o"

# External object files for target cli
cli_EXTERNAL_OBJECTS =

cli: CMakeFiles/cli.dir/src/cli.c.o
cli: CMakeFiles/cli.dir/build.make
cli: libzookeeper.a
cli: libhashtable.a
cli: CMakeFiles/cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cli"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cli.dir/build: cli

.PHONY : CMakeFiles/cli.dir/build

CMakeFiles/cli.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cli.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cli.dir/clean

CMakeFiles/cli.dir/depend:
	cd /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles/cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cli.dir/depend

