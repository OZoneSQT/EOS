# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\GitHub\EOS\Session 8\i2cTest"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/i2cTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/i2cTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/i2cTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/i2cTest.dir/flags.make

CMakeFiles/i2cTest.dir/main.cpp.obj: CMakeFiles/i2cTest.dir/flags.make
CMakeFiles/i2cTest.dir/main.cpp.obj: ../main.cpp
CMakeFiles/i2cTest.dir/main.cpp.obj: CMakeFiles/i2cTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/i2cTest.dir/main.cpp.obj"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/i2cTest.dir/main.cpp.obj -MF CMakeFiles\i2cTest.dir\main.cpp.obj.d -o CMakeFiles\i2cTest.dir\main.cpp.obj -c "E:\GitHub\EOS\Session 8\i2cTest\main.cpp"

CMakeFiles/i2cTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/i2cTest.dir/main.cpp.i"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\GitHub\EOS\Session 8\i2cTest\main.cpp" > CMakeFiles\i2cTest.dir\main.cpp.i

CMakeFiles/i2cTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/i2cTest.dir/main.cpp.s"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\GitHub\EOS\Session 8\i2cTest\main.cpp" -o CMakeFiles\i2cTest.dir\main.cpp.s

CMakeFiles/i2cTest.dir/HIH8120.cpp.obj: CMakeFiles/i2cTest.dir/flags.make
CMakeFiles/i2cTest.dir/HIH8120.cpp.obj: ../HIH8120.cpp
CMakeFiles/i2cTest.dir/HIH8120.cpp.obj: CMakeFiles/i2cTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/i2cTest.dir/HIH8120.cpp.obj"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/i2cTest.dir/HIH8120.cpp.obj -MF CMakeFiles\i2cTest.dir\HIH8120.cpp.obj.d -o CMakeFiles\i2cTest.dir\HIH8120.cpp.obj -c "E:\GitHub\EOS\Session 8\i2cTest\HIH8120.cpp"

CMakeFiles/i2cTest.dir/HIH8120.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/i2cTest.dir/HIH8120.cpp.i"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\GitHub\EOS\Session 8\i2cTest\HIH8120.cpp" > CMakeFiles\i2cTest.dir\HIH8120.cpp.i

CMakeFiles/i2cTest.dir/HIH8120.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/i2cTest.dir/HIH8120.cpp.s"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\GitHub\EOS\Session 8\i2cTest\HIH8120.cpp" -o CMakeFiles\i2cTest.dir\HIH8120.cpp.s

CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj: CMakeFiles/i2cTest.dir/flags.make
CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj: ../I2CDevice.cpp
CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj: CMakeFiles/i2cTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj -MF CMakeFiles\i2cTest.dir\I2CDevice.cpp.obj.d -o CMakeFiles\i2cTest.dir\I2CDevice.cpp.obj -c "E:\GitHub\EOS\Session 8\i2cTest\I2CDevice.cpp"

CMakeFiles/i2cTest.dir/I2CDevice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/i2cTest.dir/I2CDevice.cpp.i"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\GitHub\EOS\Session 8\i2cTest\I2CDevice.cpp" > CMakeFiles\i2cTest.dir\I2CDevice.cpp.i

CMakeFiles/i2cTest.dir/I2CDevice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/i2cTest.dir/I2CDevice.cpp.s"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\GitHub\EOS\Session 8\i2cTest\I2CDevice.cpp" -o CMakeFiles\i2cTest.dir\I2CDevice.cpp.s

CMakeFiles/i2cTest.dir/BMP180.cpp.obj: CMakeFiles/i2cTest.dir/flags.make
CMakeFiles/i2cTest.dir/BMP180.cpp.obj: ../BMP180.cpp
CMakeFiles/i2cTest.dir/BMP180.cpp.obj: CMakeFiles/i2cTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/i2cTest.dir/BMP180.cpp.obj"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/i2cTest.dir/BMP180.cpp.obj -MF CMakeFiles\i2cTest.dir\BMP180.cpp.obj.d -o CMakeFiles\i2cTest.dir\BMP180.cpp.obj -c "E:\GitHub\EOS\Session 8\i2cTest\BMP180.cpp"

CMakeFiles/i2cTest.dir/BMP180.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/i2cTest.dir/BMP180.cpp.i"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\GitHub\EOS\Session 8\i2cTest\BMP180.cpp" > CMakeFiles\i2cTest.dir\BMP180.cpp.i

CMakeFiles/i2cTest.dir/BMP180.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/i2cTest.dir/BMP180.cpp.s"
	C:\Users\skrue\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\222.4345.21\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\GitHub\EOS\Session 8\i2cTest\BMP180.cpp" -o CMakeFiles\i2cTest.dir\BMP180.cpp.s

# Object files for target i2cTest
i2cTest_OBJECTS = \
"CMakeFiles/i2cTest.dir/main.cpp.obj" \
"CMakeFiles/i2cTest.dir/HIH8120.cpp.obj" \
"CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj" \
"CMakeFiles/i2cTest.dir/BMP180.cpp.obj"

# External object files for target i2cTest
i2cTest_EXTERNAL_OBJECTS =

i2cTest.exe: CMakeFiles/i2cTest.dir/main.cpp.obj
i2cTest.exe: CMakeFiles/i2cTest.dir/HIH8120.cpp.obj
i2cTest.exe: CMakeFiles/i2cTest.dir/I2CDevice.cpp.obj
i2cTest.exe: CMakeFiles/i2cTest.dir/BMP180.cpp.obj
i2cTest.exe: CMakeFiles/i2cTest.dir/build.make
i2cTest.exe: CMakeFiles/i2cTest.dir/linklibs.rsp
i2cTest.exe: CMakeFiles/i2cTest.dir/objects1.rsp
i2cTest.exe: CMakeFiles/i2cTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable i2cTest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\i2cTest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/i2cTest.dir/build: i2cTest.exe
.PHONY : CMakeFiles/i2cTest.dir/build

CMakeFiles/i2cTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\i2cTest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/i2cTest.dir/clean

CMakeFiles/i2cTest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\GitHub\EOS\Session 8\i2cTest" "E:\GitHub\EOS\Session 8\i2cTest" "E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug" "E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug" "E:\GitHub\EOS\Session 8\i2cTest\cmake-build-debug\CMakeFiles\i2cTest.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/i2cTest.dir/depend
