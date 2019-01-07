# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "take_picture: 2 messages, 0 services")

set(MSG_I_FLAGS "-Itake_picture:/home/nvidia/catkin_ws/src/take_picture/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(take_picture_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_take_picture_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "take_picture" "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" NAME_WE)
add_custom_target(_take_picture_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "take_picture" "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" "take_picture/BoundingBox"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/take_picture
)
_generate_msg_cpp(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/take_picture
)

### Generating Services

### Generating Module File
_generate_module_cpp(take_picture
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/take_picture
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(take_picture_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(take_picture_generate_messages take_picture_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_cpp _take_picture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_cpp _take_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(take_picture_gencpp)
add_dependencies(take_picture_gencpp take_picture_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS take_picture_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/take_picture
)
_generate_msg_eus(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/take_picture
)

### Generating Services

### Generating Module File
_generate_module_eus(take_picture
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/take_picture
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(take_picture_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(take_picture_generate_messages take_picture_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_eus _take_picture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_eus _take_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(take_picture_geneus)
add_dependencies(take_picture_geneus take_picture_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS take_picture_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/take_picture
)
_generate_msg_lisp(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/take_picture
)

### Generating Services

### Generating Module File
_generate_module_lisp(take_picture
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/take_picture
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(take_picture_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(take_picture_generate_messages take_picture_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_lisp _take_picture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_lisp _take_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(take_picture_genlisp)
add_dependencies(take_picture_genlisp take_picture_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS take_picture_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/take_picture
)
_generate_msg_nodejs(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/take_picture
)

### Generating Services

### Generating Module File
_generate_module_nodejs(take_picture
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/take_picture
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(take_picture_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(take_picture_generate_messages take_picture_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_nodejs _take_picture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_nodejs _take_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(take_picture_gennodejs)
add_dependencies(take_picture_gennodejs take_picture_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS take_picture_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/take_picture
)
_generate_msg_py(take_picture
  "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/take_picture
)

### Generating Services

### Generating Module File
_generate_module_py(take_picture
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/take_picture
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(take_picture_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(take_picture_generate_messages take_picture_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/BoundingBox.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_py _take_picture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/take_picture/msg/photo.msg" NAME_WE)
add_dependencies(take_picture_generate_messages_py _take_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(take_picture_genpy)
add_dependencies(take_picture_genpy take_picture_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS take_picture_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/take_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/take_picture
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(take_picture_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/take_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/take_picture
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(take_picture_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/take_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/take_picture
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(take_picture_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/take_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/take_picture
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(take_picture_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/take_picture)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/take_picture\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/take_picture
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(take_picture_generate_messages_py std_msgs_generate_messages_py)
endif()
