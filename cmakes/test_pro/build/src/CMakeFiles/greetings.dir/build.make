# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/watanabe.h/cppproject/cmakes/test_pro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/watanabe.h/cppproject/cmakes/test_pro/build

# Include any dependencies generated for this target.
include src/CMakeFiles/greetings.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/greetings.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/greetings.dir/flags.make

src/CMakeFiles/greetings.dir/hello.cpp.o: src/CMakeFiles/greetings.dir/flags.make
src/CMakeFiles/greetings.dir/hello.cpp.o: ../src/hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/watanabe.h/cppproject/cmakes/test_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/greetings.dir/hello.cpp.o"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/greetings.dir/hello.cpp.o -c /home/watanabe.h/cppproject/cmakes/test_pro/src/hello.cpp

src/CMakeFiles/greetings.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greetings.dir/hello.cpp.i"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/watanabe.h/cppproject/cmakes/test_pro/src/hello.cpp > CMakeFiles/greetings.dir/hello.cpp.i

src/CMakeFiles/greetings.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greetings.dir/hello.cpp.s"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/watanabe.h/cppproject/cmakes/test_pro/src/hello.cpp -o CMakeFiles/greetings.dir/hello.cpp.s

src/CMakeFiles/greetings.dir/good_morning.cpp.o: src/CMakeFiles/greetings.dir/flags.make
src/CMakeFiles/greetings.dir/good_morning.cpp.o: ../src/good_morning.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/watanabe.h/cppproject/cmakes/test_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/greetings.dir/good_morning.cpp.o"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/greetings.dir/good_morning.cpp.o -c /home/watanabe.h/cppproject/cmakes/test_pro/src/good_morning.cpp

src/CMakeFiles/greetings.dir/good_morning.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greetings.dir/good_morning.cpp.i"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/watanabe.h/cppproject/cmakes/test_pro/src/good_morning.cpp > CMakeFiles/greetings.dir/good_morning.cpp.i

src/CMakeFiles/greetings.dir/good_morning.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greetings.dir/good_morning.cpp.s"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/watanabe.h/cppproject/cmakes/test_pro/src/good_morning.cpp -o CMakeFiles/greetings.dir/good_morning.cpp.s

# Object files for target greetings
greetings_OBJECTS = \
"CMakeFiles/greetings.dir/hello.cpp.o" \
"CMakeFiles/greetings.dir/good_morning.cpp.o"

# External object files for target greetings
greetings_EXTERNAL_OBJECTS =

src/msys-greetings.dll: src/CMakeFiles/greetings.dir/hello.cpp.o
src/msys-greetings.dll: src/CMakeFiles/greetings.dir/good_morning.cpp.o
src/msys-greetings.dll: src/CMakeFiles/greetings.dir/build.make
src/msys-greetings.dll: src/CMakeFiles/greetings.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/watanabe.h/cppproject/cmakes/test_pro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library msys-greetings.dll"
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/greetings.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/greetings.dir/build: src/msys-greetings.dll

.PHONY : src/CMakeFiles/greetings.dir/build

src/CMakeFiles/greetings.dir/clean:
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build/src && $(CMAKE_COMMAND) -P CMakeFiles/greetings.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/greetings.dir/clean

src/CMakeFiles/greetings.dir/depend:
	cd /home/watanabe.h/cppproject/cmakes/test_pro/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/watanabe.h/cppproject/cmakes/test_pro /home/watanabe.h/cppproject/cmakes/test_pro/src /home/watanabe.h/cppproject/cmakes/test_pro/build /home/watanabe.h/cppproject/cmakes/test_pro/build/src /home/watanabe.h/cppproject/cmakes/test_pro/build/src/CMakeFiles/greetings.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/greetings.dir/depend

