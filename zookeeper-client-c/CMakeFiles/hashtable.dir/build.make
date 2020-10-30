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
include CMakeFiles/hashtable.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hashtable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hashtable.dir/flags.make

CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.o: CMakeFiles/hashtable.dir/flags.make
CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.o: src/hashtable/hashtable_itr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.o   -c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/hashtable/hashtable_itr.c

CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/hashtable/hashtable_itr.c > CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.i

CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/hashtable/hashtable_itr.c -o CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.s

CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.o: CMakeFiles/hashtable.dir/flags.make
CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.o: src/hashtable/hashtable.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.o   -c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/hashtable/hashtable.c

CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/hashtable/hashtable.c > CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.i

CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/src/hashtable/hashtable.c -o CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.s

# Object files for target hashtable
hashtable_OBJECTS = \
"CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.o" \
"CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.o"

# External object files for target hashtable
hashtable_EXTERNAL_OBJECTS =

libhashtable.a: CMakeFiles/hashtable.dir/src/hashtable/hashtable_itr.c.o
libhashtable.a: CMakeFiles/hashtable.dir/src/hashtable/hashtable.c.o
libhashtable.a: CMakeFiles/hashtable.dir/build.make
libhashtable.a: CMakeFiles/hashtable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libhashtable.a"
	$(CMAKE_COMMAND) -P CMakeFiles/hashtable.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hashtable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hashtable.dir/build: libhashtable.a

.PHONY : CMakeFiles/hashtable.dir/build

CMakeFiles/hashtable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hashtable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hashtable.dir/clean

CMakeFiles/hashtable.dir/depend:
	cd /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeFiles/hashtable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hashtable.dir/depend

