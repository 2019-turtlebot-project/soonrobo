# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "newmode: 7 messages, 0 services")

set(MSG_I_FLAGS "-Inewmode:/home/ri/soonrobo/src/newmode/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(newmode_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/start.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/start.msg" ""
)

get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" ""
)

get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" ""
)

get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" ""
)

get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/twist.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/twist.msg" "newmode/xyz"
)

get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" ""
)

get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/xyz.msg" NAME_WE)
add_custom_target(_newmode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "newmode" "/home/ri/soonrobo/src/newmode/msg/xyz.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/start.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/twist.msg"
  "${MSG_I_FLAGS}"
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)
_generate_msg_cpp(newmode
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
)

### Generating Services

### Generating Module File
_generate_module_cpp(newmode
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(newmode_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(newmode_generate_messages newmode_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/start.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/twist.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/xyz.msg" NAME_WE)
add_dependencies(newmode_generate_messages_cpp _newmode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(newmode_gencpp)
add_dependencies(newmode_gencpp newmode_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS newmode_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/start.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/twist.msg"
  "${MSG_I_FLAGS}"
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)
_generate_msg_eus(newmode
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
)

### Generating Services

### Generating Module File
_generate_module_eus(newmode
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(newmode_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(newmode_generate_messages newmode_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/start.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/twist.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/xyz.msg" NAME_WE)
add_dependencies(newmode_generate_messages_eus _newmode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(newmode_geneus)
add_dependencies(newmode_geneus newmode_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS newmode_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/start.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/twist.msg"
  "${MSG_I_FLAGS}"
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)
_generate_msg_lisp(newmode
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
)

### Generating Services

### Generating Module File
_generate_module_lisp(newmode
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(newmode_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(newmode_generate_messages newmode_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/start.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/twist.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/xyz.msg" NAME_WE)
add_dependencies(newmode_generate_messages_lisp _newmode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(newmode_genlisp)
add_dependencies(newmode_genlisp newmode_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS newmode_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/start.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/twist.msg"
  "${MSG_I_FLAGS}"
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)
_generate_msg_nodejs(newmode
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
)

### Generating Services

### Generating Module File
_generate_module_nodejs(newmode
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(newmode_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(newmode_generate_messages newmode_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/start.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/twist.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/xyz.msg" NAME_WE)
add_dependencies(newmode_generate_messages_nodejs _newmode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(newmode_gennodejs)
add_dependencies(newmode_gennodejs newmode_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS newmode_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/start.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/twist.msg"
  "${MSG_I_FLAGS}"
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)
_generate_msg_py(newmode
  "/home/ri/soonrobo/src/newmode/msg/xyz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
)

### Generating Services

### Generating Module File
_generate_module_py(newmode
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(newmode_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(newmode_generate_messages newmode_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/start.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_sine.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_lane.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/msg_detect.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/twist.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/mode_msg.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ri/soonrobo/src/newmode/msg/xyz.msg" NAME_WE)
add_dependencies(newmode_generate_messages_py _newmode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(newmode_genpy)
add_dependencies(newmode_genpy newmode_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS newmode_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/newmode
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(newmode_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(newmode_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(newmode_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/newmode
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(newmode_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(newmode_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(newmode_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/newmode
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(newmode_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(newmode_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(newmode_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/newmode
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(newmode_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(newmode_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(newmode_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/newmode
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(newmode_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(newmode_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(newmode_generate_messages_py std_msgs_generate_messages_py)
endif()
