cmake_minimum_required(VERSION 3.8)
project(sirius_navigation)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake_auto REQUIRED)
find_package(yaml-cpp REQUIRED)
ament_auto_find_build_dependencies()

ament_auto_add_executable(move_goal src/move_goal.cpp)
ament_target_dependencies(move_goal yaml-cpp)
target_link_libraries(move_goal yaml-cpp)
ament_auto_add_executable(get_odometry src/get_odometry.cpp)


ament_auto_add_executable(subscribe_goal src/subscribe_goal.cpp)
target_link_libraries(subscribe_goal yaml-cpp)


ament_auto_add_executable(cancel_goal src/cancel_goal.cpp)

install(DIRECTORY launch
  DESTINATION share/sirius_navigation)
install(DIRECTORY config
  DESTINATION share/sirius_navigation)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
