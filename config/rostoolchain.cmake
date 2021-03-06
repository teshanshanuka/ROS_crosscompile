#File rostoolchain.cmake
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
set(CMAKE_FIND_ROOT_PATH ${CROSS_ROOT})
set(CATKIN_WS_ROOT ${CROSS_ROOT}/ros_melodic)
set(COMPILER_ROOT /usr/aarch64-linux-gnu)

# Have to set this one to BOTH, to allow CMake to find rospack
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(PYTHON_EXECUTABLE /usr/bin/python)
set(CMAKE_CROSSCOMPILING true)
set(CMAKE_PREFIX_PATH ${CATKIN_WS_ROOT}/devel ${COMPILER_ROOT} ${CROSS_ROOT}/arm-linux)
# set(LD_LIBRARY_PATH ${CROSS_ROOT}/arm-linux/lib)
set(LD_LIBRARY_PATH ${CATKIN_WS_ROOT}/devel)
set(CATKIN_ENABLE_TESTING false)

set(EIGEN3_DIR ${CROSS_ROOT}/arm-linux)
set(EIGEN3_INCLUDE_DIR ${CROSS_ROOT}/arm-linux/include/eigen3)
set(EIGEN_INCLUDE_DIR ${CROSS_ROOT}/arm-linux/include/eigen3)

add_definitions(-DTIXML_USE_STL)
