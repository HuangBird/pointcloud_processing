# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "car_body_defect_detect: 0 messages, 7 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(car_body_defect_detect_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" ""
)

get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" ""
)

get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" ""
)

get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" ""
)

get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" ""
)

get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" ""
)

get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" NAME_WE)
add_custom_target(_car_body_defect_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_body_defect_detect" "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_cpp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
)

### Generating Module File
_generate_module_cpp(car_body_defect_detect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(car_body_defect_detect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(car_body_defect_detect_generate_messages car_body_defect_detect_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_cpp _car_body_defect_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_body_defect_detect_gencpp)
add_dependencies(car_body_defect_detect_gencpp car_body_defect_detect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_body_defect_detect_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_eus(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
)

### Generating Module File
_generate_module_eus(car_body_defect_detect
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(car_body_defect_detect_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(car_body_defect_detect_generate_messages car_body_defect_detect_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_eus _car_body_defect_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_body_defect_detect_geneus)
add_dependencies(car_body_defect_detect_geneus car_body_defect_detect_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_body_defect_detect_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_lisp(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
)

### Generating Module File
_generate_module_lisp(car_body_defect_detect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(car_body_defect_detect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(car_body_defect_detect_generate_messages car_body_defect_detect_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_lisp _car_body_defect_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_body_defect_detect_genlisp)
add_dependencies(car_body_defect_detect_genlisp car_body_defect_detect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_body_defect_detect_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_nodejs(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
)

### Generating Module File
_generate_module_nodejs(car_body_defect_detect
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(car_body_defect_detect_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(car_body_defect_detect_generate_messages car_body_defect_detect_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_nodejs _car_body_defect_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_body_defect_detect_gennodejs)
add_dependencies(car_body_defect_detect_gennodejs car_body_defect_detect_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_body_defect_detect_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)
_generate_srv_py(car_body_defect_detect
  "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
)

### Generating Module File
_generate_module_py(car_body_defect_detect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(car_body_defect_detect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(car_body_defect_detect_generate_messages car_body_defect_detect_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_area.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/plane_model.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/read_pcd.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_input.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_region_grow.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhhbird/Codes/pointcloud_processing/src/car_body_defect_detect/srv/visualize_defect.srv" NAME_WE)
add_dependencies(car_body_defect_detect_generate_messages_py _car_body_defect_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_body_defect_detect_genpy)
add_dependencies(car_body_defect_detect_genpy car_body_defect_detect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_body_defect_detect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_body_defect_detect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(car_body_defect_detect_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_body_defect_detect
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(car_body_defect_detect_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_body_defect_detect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(car_body_defect_detect_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_body_defect_detect
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(car_body_defect_detect_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_body_defect_detect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(car_body_defect_detect_generate_messages_py sensor_msgs_generate_messages_py)
endif()
