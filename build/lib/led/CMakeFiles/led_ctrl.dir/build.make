# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/cy/C Workspace/tscreen_to_led"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/cy/C Workspace/tscreen_to_led/build"

# Include any dependencies generated for this target.
include lib/led/CMakeFiles/led_ctrl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/led/CMakeFiles/led_ctrl.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/led/CMakeFiles/led_ctrl.dir/progress.make

# Include the compile flags for this target's objects.
include lib/led/CMakeFiles/led_ctrl.dir/flags.make

lib/led/CMakeFiles/led_ctrl.dir/led.c.o: lib/led/CMakeFiles/led_ctrl.dir/flags.make
lib/led/CMakeFiles/led_ctrl.dir/led.c.o: /home/cy/C\ Workspace/tscreen_to_led/lib/led/led.c
lib/led/CMakeFiles/led_ctrl.dir/led.c.o: lib/led/CMakeFiles/led_ctrl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/cy/C Workspace/tscreen_to_led/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/led/CMakeFiles/led_ctrl.dir/led.c.o"
	cd "/home/cy/C Workspace/tscreen_to_led/build/lib/led" && arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/led/CMakeFiles/led_ctrl.dir/led.c.o -MF CMakeFiles/led_ctrl.dir/led.c.o.d -o CMakeFiles/led_ctrl.dir/led.c.o -c "/home/cy/C Workspace/tscreen_to_led/lib/led/led.c"

lib/led/CMakeFiles/led_ctrl.dir/led.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/led_ctrl.dir/led.c.i"
	cd "/home/cy/C Workspace/tscreen_to_led/build/lib/led" && arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/cy/C Workspace/tscreen_to_led/lib/led/led.c" > CMakeFiles/led_ctrl.dir/led.c.i

lib/led/CMakeFiles/led_ctrl.dir/led.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/led_ctrl.dir/led.c.s"
	cd "/home/cy/C Workspace/tscreen_to_led/build/lib/led" && arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/cy/C Workspace/tscreen_to_led/lib/led/led.c" -o CMakeFiles/led_ctrl.dir/led.c.s

# Object files for target led_ctrl
led_ctrl_OBJECTS = \
"CMakeFiles/led_ctrl.dir/led.c.o"

# External object files for target led_ctrl
led_ctrl_EXTERNAL_OBJECTS =

lib/led/libled_ctrl.a: lib/led/CMakeFiles/led_ctrl.dir/led.c.o
lib/led/libled_ctrl.a: lib/led/CMakeFiles/led_ctrl.dir/build.make
lib/led/libled_ctrl.a: lib/led/CMakeFiles/led_ctrl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/cy/C Workspace/tscreen_to_led/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libled_ctrl.a"
	cd "/home/cy/C Workspace/tscreen_to_led/build/lib/led" && $(CMAKE_COMMAND) -P CMakeFiles/led_ctrl.dir/cmake_clean_target.cmake
	cd "/home/cy/C Workspace/tscreen_to_led/build/lib/led" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/led_ctrl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/led/CMakeFiles/led_ctrl.dir/build: lib/led/libled_ctrl.a
.PHONY : lib/led/CMakeFiles/led_ctrl.dir/build

lib/led/CMakeFiles/led_ctrl.dir/clean:
	cd "/home/cy/C Workspace/tscreen_to_led/build/lib/led" && $(CMAKE_COMMAND) -P CMakeFiles/led_ctrl.dir/cmake_clean.cmake
.PHONY : lib/led/CMakeFiles/led_ctrl.dir/clean

lib/led/CMakeFiles/led_ctrl.dir/depend:
	cd "/home/cy/C Workspace/tscreen_to_led/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/cy/C Workspace/tscreen_to_led" "/home/cy/C Workspace/tscreen_to_led/lib/led" "/home/cy/C Workspace/tscreen_to_led/build" "/home/cy/C Workspace/tscreen_to_led/build/lib/led" "/home/cy/C Workspace/tscreen_to_led/build/lib/led/CMakeFiles/led_ctrl.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : lib/led/CMakeFiles/led_ctrl.dir/depend

