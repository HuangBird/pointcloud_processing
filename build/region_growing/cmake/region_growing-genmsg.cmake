# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "region_growing: 0 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(region_growing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" NAME_WE)
add_custom_target(_region_growing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "region_growing" "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(region_growing
  "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/region_growing
)

### Generating Module File
_generate_module_cpp(region_growing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/region_growing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(region_growing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(region_growing_generate_messages region_growing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" NAME_WE)
add_dependencies(region_growing_generate_messages_cpp _region_growing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(region_growing_gencpp)
add_dependencies(region_growing_gencpp region_growing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS region_growing_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(region_growing
  "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/region_growing
)

### Generating Module File
_generate_module_eus(region_growing
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/region_growing
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(region_growing_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(region_growing_generate_messages region_growing_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" NAME_WE)
add_dependencies(region_growing_generate_messages_eus _region_growing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(region_growing_geneus)
add_dependencies(region_growing_geneus region_growing_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS region_growing_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(region_growing
  "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/region_growing
)

### Generating Module File
_generate_module_lisp(region_growing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/region_growing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(region_growing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(region_growing_generate_messages region_growing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" NAME_WE)
add_dependencies(region_growing_generate_messages_lisp _region_growing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(region_growing_genlisp)
add_dependencies(region_growing_genlisp region_growing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS region_growing_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(region_growing
  "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/region_growing
)

### Generating Module File
_generate_module_nodejs(region_growing
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/region_growing
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(region_growing_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(region_growing_generate_messages region_growing_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" NAME_WE)
add_dependencies(region_growing_generate_messages_nodejs _region_growing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(region_growing_gennodejs)
add_dependencies(region_growing_gennodejs region_growing_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS region_growing_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(region_growing
  "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/region_growing
)

### Generating Module File
_generate_module_py(region_growing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/region_growing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(region_growing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(region_growing_generate_messages region_growing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/region_growing/srv/region_grow.srv" NAME_WE)
add_dependencies(region_growing_generate_messages_py _region_growing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(region_growing_genpy)
add_dependencies(region_growing_genpy region_growing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS region_growing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/region_growing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/region_growing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(region_growing_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/region_growing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/region_growing
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(region_growing_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/region_growing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/region_growing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(region_growing_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/region_growing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/region_growing
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(region_growing_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/region_growing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/region_growing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/region_growing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(region_growing_generate_messages_py sensor_msgs_generate_messages_py)
endif()
