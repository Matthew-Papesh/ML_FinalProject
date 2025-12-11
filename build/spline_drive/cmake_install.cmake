# Install script for directory: /home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/matthew/Documents/GitHub/ML_FinalProject/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/matthew/Documents/GitHub/ML_FinalProject/build/spline_drive/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS_SplinePathMotionProfiling/srv" TYPE FILE FILES
    "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetSimpleSplinePlan.srv"
    "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavSimTest.srv"
    "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/srv/GetNavCriteriaPlan.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS_SplinePathMotionProfiling/cmake" TYPE FILE FILES "/home/matthew/Documents/GitHub/ML_FinalProject/build/spline_drive/catkin_generated/installspace/ROS_SplinePathMotionProfiling-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/matthew/Documents/GitHub/ML_FinalProject/devel/include/ROS_SplinePathMotionProfiling")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/matthew/Documents/GitHub/ML_FinalProject/devel/share/roseus/ros/ROS_SplinePathMotionProfiling")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/matthew/Documents/GitHub/ML_FinalProject/devel/share/common-lisp/ros/ROS_SplinePathMotionProfiling")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/matthew/Documents/GitHub/ML_FinalProject/devel/share/gennodejs/ros/ROS_SplinePathMotionProfiling")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/matthew/Documents/GitHub/ML_FinalProject/devel/lib/python3/dist-packages/ROS_SplinePathMotionProfiling")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/matthew/Documents/GitHub/ML_FinalProject/devel/lib/python3/dist-packages/ROS_SplinePathMotionProfiling" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/matthew/Documents/GitHub/ML_FinalProject/devel/lib/python3/dist-packages/ROS_SplinePathMotionProfiling" FILES_MATCHING REGEX "/home/matthew/Documents/GitHub/ML_FinalProject/devel/lib/python3/dist-packages/ROS_SplinePathMotionProfiling/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/matthew/Documents/GitHub/ML_FinalProject/build/spline_drive/catkin_generated/installspace/ROS_SplinePathMotionProfiling.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS_SplinePathMotionProfiling/cmake" TYPE FILE FILES "/home/matthew/Documents/GitHub/ML_FinalProject/build/spline_drive/catkin_generated/installspace/ROS_SplinePathMotionProfiling-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS_SplinePathMotionProfiling/cmake" TYPE FILE FILES
    "/home/matthew/Documents/GitHub/ML_FinalProject/build/spline_drive/catkin_generated/installspace/ROS_SplinePathMotionProfilingConfig.cmake"
    "/home/matthew/Documents/GitHub/ML_FinalProject/build/spline_drive/catkin_generated/installspace/ROS_SplinePathMotionProfilingConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS_SplinePathMotionProfiling" TYPE FILE FILES "/home/matthew/Documents/GitHub/ML_FinalProject/src/spline_drive/package.xml")
endif()

