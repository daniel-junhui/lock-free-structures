# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/junhui/cmake/bin/cmake

# The command to remove a file.
RM = /home/junhui/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/junhui/code-practice/dslabs-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/junhui/code-practice/dslabs-cpp/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test_kv_store.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_kv_store.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_kv_store.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_kv_store.dir/flags.make

test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.o: test/CMakeFiles/test_kv_store.dir/flags.make
test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.o: /home/junhui/code-practice/dslabs-cpp/test/test_kv_store.cc
test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.o: test/CMakeFiles/test_kv_store.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/junhui/code-practice/dslabs-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.o"
	cd /home/junhui/code-practice/dslabs-cpp/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.o -MF CMakeFiles/test_kv_store.dir/test_kv_store.cc.o.d -o CMakeFiles/test_kv_store.dir/test_kv_store.cc.o -c /home/junhui/code-practice/dslabs-cpp/test/test_kv_store.cc

test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_kv_store.dir/test_kv_store.cc.i"
	cd /home/junhui/code-practice/dslabs-cpp/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/junhui/code-practice/dslabs-cpp/test/test_kv_store.cc > CMakeFiles/test_kv_store.dir/test_kv_store.cc.i

test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_kv_store.dir/test_kv_store.cc.s"
	cd /home/junhui/code-practice/dslabs-cpp/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/junhui/code-practice/dslabs-cpp/test/test_kv_store.cc -o CMakeFiles/test_kv_store.dir/test_kv_store.cc.s

# Object files for target test_kv_store
test_kv_store_OBJECTS = \
"CMakeFiles/test_kv_store.dir/test_kv_store.cc.o"

# External object files for target test_kv_store
test_kv_store_EXTERNAL_OBJECTS =

test/test_kv_store: test/CMakeFiles/test_kv_store.dir/test_kv_store.cc.o
test/test_kv_store: test/CMakeFiles/test_kv_store.dir/build.make
test/test_kv_store: test/CMakeFiles/test_kv_store.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/junhui/code-practice/dslabs-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_kv_store"
	cd /home/junhui/code-practice/dslabs-cpp/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_kv_store.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_kv_store.dir/build: test/test_kv_store
.PHONY : test/CMakeFiles/test_kv_store.dir/build

test/CMakeFiles/test_kv_store.dir/clean:
	cd /home/junhui/code-practice/dslabs-cpp/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_kv_store.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_kv_store.dir/clean

test/CMakeFiles/test_kv_store.dir/depend:
	cd /home/junhui/code-practice/dslabs-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/junhui/code-practice/dslabs-cpp /home/junhui/code-practice/dslabs-cpp/test /home/junhui/code-practice/dslabs-cpp/build /home/junhui/code-practice/dslabs-cpp/build/test /home/junhui/code-practice/dslabs-cpp/build/test/CMakeFiles/test_kv_store.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_kv_store.dir/depend

