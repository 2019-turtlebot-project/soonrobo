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
CMAKE_SOURCE_DIR = /home/ri/soonrobo/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ri/soonrobo/build

# Utility rule file for newmode_generate_messages_cpp.

# Include the progress variables for this target.
include newmode/CMakeFiles/newmode_generate_messages_cpp.dir/progress.make

newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/start.h
newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/msg_sine.h
newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/msg_lane.h
newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/msg_detect.h
newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/twist.h
newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/mode_msg.h
newmode/CMakeFiles/newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/xyz.h


/home/ri/soonrobo/devel/include/newmode/start.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/start.h: /home/ri/soonrobo/src/newmode/msg/start.msg
/home/ri/soonrobo/devel/include/newmode/start.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from newmode/start.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/start.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ri/soonrobo/devel/include/newmode/msg_sine.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/msg_sine.h: /home/ri/soonrobo/src/newmode/msg/msg_sine.msg
/home/ri/soonrobo/devel/include/newmode/msg_sine.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from newmode/msg_sine.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/msg_sine.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ri/soonrobo/devel/include/newmode/msg_lane.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/msg_lane.h: /home/ri/soonrobo/src/newmode/msg/msg_lane.msg
/home/ri/soonrobo/devel/include/newmode/msg_lane.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from newmode/msg_lane.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/msg_lane.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ri/soonrobo/devel/include/newmode/msg_detect.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/msg_detect.h: /home/ri/soonrobo/src/newmode/msg/msg_detect.msg
/home/ri/soonrobo/devel/include/newmode/msg_detect.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from newmode/msg_detect.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/msg_detect.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ri/soonrobo/devel/include/newmode/twist.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/twist.h: /home/ri/soonrobo/src/newmode/msg/twist.msg
/home/ri/soonrobo/devel/include/newmode/twist.h: /home/ri/soonrobo/src/newmode/msg/xyz.msg
/home/ri/soonrobo/devel/include/newmode/twist.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from newmode/twist.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/twist.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ri/soonrobo/devel/include/newmode/mode_msg.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/mode_msg.h: /home/ri/soonrobo/src/newmode/msg/mode_msg.msg
/home/ri/soonrobo/devel/include/newmode/mode_msg.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating C++ code from newmode/mode_msg.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/mode_msg.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ri/soonrobo/devel/include/newmode/xyz.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ri/soonrobo/devel/include/newmode/xyz.h: /home/ri/soonrobo/src/newmode/msg/xyz.msg
/home/ri/soonrobo/devel/include/newmode/xyz.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ri/soonrobo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating C++ code from newmode/xyz.msg"
	cd /home/ri/soonrobo/src/newmode && /home/ri/soonrobo/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ri/soonrobo/src/newmode/msg/xyz.msg -Inewmode:/home/ri/soonrobo/src/newmode/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p newmode -o /home/ri/soonrobo/devel/include/newmode -e /opt/ros/kinetic/share/gencpp/cmake/..

newmode_generate_messages_cpp: newmode/CMakeFiles/newmode_generate_messages_cpp
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/start.h
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/msg_sine.h
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/msg_lane.h
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/msg_detect.h
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/twist.h
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/mode_msg.h
newmode_generate_messages_cpp: /home/ri/soonrobo/devel/include/newmode/xyz.h
newmode_generate_messages_cpp: newmode/CMakeFiles/newmode_generate_messages_cpp.dir/build.make

.PHONY : newmode_generate_messages_cpp

# Rule to build all files generated by this target.
newmode/CMakeFiles/newmode_generate_messages_cpp.dir/build: newmode_generate_messages_cpp

.PHONY : newmode/CMakeFiles/newmode_generate_messages_cpp.dir/build

newmode/CMakeFiles/newmode_generate_messages_cpp.dir/clean:
	cd /home/ri/soonrobo/build/newmode && $(CMAKE_COMMAND) -P CMakeFiles/newmode_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : newmode/CMakeFiles/newmode_generate_messages_cpp.dir/clean

newmode/CMakeFiles/newmode_generate_messages_cpp.dir/depend:
	cd /home/ri/soonrobo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ri/soonrobo/src /home/ri/soonrobo/src/newmode /home/ri/soonrobo/build /home/ri/soonrobo/build/newmode /home/ri/soonrobo/build/newmode/CMakeFiles/newmode_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : newmode/CMakeFiles/newmode_generate_messages_cpp.dir/depend
