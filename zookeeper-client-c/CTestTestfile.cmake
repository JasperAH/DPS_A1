# CMake generated Testfile for 
# Source directory: /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c
# Build directory: /home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(zktest_runner "/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/zktest")
set_tests_properties(zktest_runner PROPERTIES  ENVIRONMENT "ZKROOT=/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/../..;CLASSPATH=\$CLASSPATH:\$CLOVER_HOME/lib/clover*.jar" _BACKTRACE_TRIPLES "/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeLists.txt;288;add_test;/home/user/Documents/DPS/Zookeeper_git/zookeeper/zookeeper-client/zookeeper-client-c/CMakeLists.txt;0;")
