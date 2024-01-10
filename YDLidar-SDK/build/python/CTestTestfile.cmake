# CMake generated Testfile for 
# Source directory: /home/nwrlab/ydlsdk/YDLidar-SDK/python
# Build directory: /home/nwrlab/ydlsdk/YDLidar-SDK/build/python
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ydlidar_py_test "/usr/bin/python3.8" "/home/nwrlab/ydlsdk/YDLidar-SDK/python/test/pytest.py")
set_tests_properties(ydlidar_py_test PROPERTIES  ENVIRONMENT "PYTHONPATH=/opt/ros/foxy/lib/python3.8/site-packages:/home/nwrlab/ydlsdk/YDLidar-SDK/build/python" _BACKTRACE_TRIPLES "/home/nwrlab/ydlsdk/YDLidar-SDK/python/CMakeLists.txt;42;add_test;/home/nwrlab/ydlsdk/YDLidar-SDK/python/CMakeLists.txt;0;")
subdirs("examples")
