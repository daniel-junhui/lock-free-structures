if(EXISTS "/home/junhui/code-practice/dslabs-cpp/build/gtest_test[1]_tests.cmake")
  include("/home/junhui/code-practice/dslabs-cpp/build/gtest_test[1]_tests.cmake")
else()
  add_test(gtest_test_NOT_BUILT gtest_test_NOT_BUILT)
endif()
