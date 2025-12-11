# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ROS_SplinePathMotionProfiling: 0 messages, 3 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ROS_SplinePathMotionProfiling_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" NAME_WE)
add_custom_target(_ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ROS_SplinePathMotionProfiling" "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" "geometry_msgs/Pose:nav_msgs/Path:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" NAME_WE)
add_custom_target(_ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ROS_SplinePathMotionProfiling" "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" ""
)

get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" NAME_WE)
add_custom_target(_ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ROS_SplinePathMotionProfiling" "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_cpp(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_cpp(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)

### Generating Module File
_generate_module_cpp(ROS_SplinePathMotionProfiling
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ROS_SplinePathMotionProfiling_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages ROS_SplinePathMotionProfiling_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_cpp _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_cpp _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_cpp _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROS_SplinePathMotionProfiling_gencpp)
add_dependencies(ROS_SplinePathMotionProfiling_gencpp ROS_SplinePathMotionProfiling_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROS_SplinePathMotionProfiling_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_eus(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_eus(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)

### Generating Module File
_generate_module_eus(ROS_SplinePathMotionProfiling
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROS_SplinePathMotionProfiling
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ROS_SplinePathMotionProfiling_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages ROS_SplinePathMotionProfiling_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_eus _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_eus _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_eus _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROS_SplinePathMotionProfiling_geneus)
add_dependencies(ROS_SplinePathMotionProfiling_geneus ROS_SplinePathMotionProfiling_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROS_SplinePathMotionProfiling_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_lisp(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_lisp(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)

### Generating Module File
_generate_module_lisp(ROS_SplinePathMotionProfiling
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ROS_SplinePathMotionProfiling_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages ROS_SplinePathMotionProfiling_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_lisp _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_lisp _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_lisp _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROS_SplinePathMotionProfiling_genlisp)
add_dependencies(ROS_SplinePathMotionProfiling_genlisp ROS_SplinePathMotionProfiling_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROS_SplinePathMotionProfiling_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_nodejs(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_nodejs(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)

### Generating Module File
_generate_module_nodejs(ROS_SplinePathMotionProfiling
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROS_SplinePathMotionProfiling
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ROS_SplinePathMotionProfiling_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages ROS_SplinePathMotionProfiling_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_nodejs _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_nodejs _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_nodejs _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROS_SplinePathMotionProfiling_gennodejs)
add_dependencies(ROS_SplinePathMotionProfiling_gennodejs ROS_SplinePathMotionProfiling_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROS_SplinePathMotionProfiling_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_py(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)
_generate_srv_py(ROS_SplinePathMotionProfiling
  "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling
)

### Generating Module File
_generate_module_py(ROS_SplinePathMotionProfiling
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ROS_SplinePathMotionProfiling_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages ROS_SplinePathMotionProfiling_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_py _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_py _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv" NAME_WE)
add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_py _ROS_SplinePathMotionProfiling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROS_SplinePathMotionProfiling_genpy)
add_dependencies(ROS_SplinePathMotionProfiling_genpy ROS_SplinePathMotionProfiling_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROS_SplinePathMotionProfiling_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROS_SplinePathMotionProfiling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROS_SplinePathMotionProfiling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROS_SplinePathMotionProfiling
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROS_SplinePathMotionProfiling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROS_SplinePathMotionProfiling
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROS_SplinePathMotionProfiling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROS_SplinePathMotionProfiling
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROS_SplinePathMotionProfiling
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ROS_SplinePathMotionProfiling_generate_messages_py std_msgs_generate_messages_py)
endif()
