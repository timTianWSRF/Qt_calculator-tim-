# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\QTtry\second

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\QTtry\second\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Hello.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hello.dir/flags.make

CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.obj: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.obj: CMakeFiles/Hello.dir/includes_CXX.rsp
CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.obj: Hello_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\QTtry\second\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.obj"
	D:\Cpp\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Hello.dir\Hello_autogen\mocs_compilation.cpp.obj -c D:\QTtry\second\cmake-build-debug\Hello_autogen\mocs_compilation.cpp

CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.i"
	D:\Cpp\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\QTtry\second\cmake-build-debug\Hello_autogen\mocs_compilation.cpp > CMakeFiles\Hello.dir\Hello_autogen\mocs_compilation.cpp.i

CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.s"
	D:\Cpp\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\QTtry\second\cmake-build-debug\Hello_autogen\mocs_compilation.cpp -o CMakeFiles\Hello.dir\Hello_autogen\mocs_compilation.cpp.s

# Object files for target Hello
Hello_OBJECTS = \
"CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.obj"

# External object files for target Hello
Hello_EXTERNAL_OBJECTS =

Hello.exe: CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.obj
Hello.exe: CMakeFiles/Hello.dir/build.make
Hello.exe: C:/ProgramData/Anaconda3/Library/lib/Qt5Widgets.lib
Hello.exe: C:/ProgramData/Anaconda3/Library/lib/Qt5Gui.lib
Hello.exe: C:/ProgramData/Anaconda3/Library/lib/Qt5Core.lib
Hello.exe: C:/ProgramData/Anaconda3/Library/lib/qtmain.lib
Hello.exe: CMakeFiles/Hello.dir/linklibs.rsp
Hello.exe: CMakeFiles/Hello.dir/objects1.rsp
Hello.exe: CMakeFiles/Hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\QTtry\second\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Hello.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Hello.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hello.dir/build: Hello.exe

.PHONY : CMakeFiles/Hello.dir/build

CMakeFiles/Hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Hello.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Hello.dir/clean

CMakeFiles/Hello.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\QTtry\second D:\QTtry\second D:\QTtry\second\cmake-build-debug D:\QTtry\second\cmake-build-debug D:\QTtry\second\cmake-build-debug\CMakeFiles\Hello.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Hello.dir/depend

