cmake_minimum_required(VERSION 3.8)
project(test_cmake CXX)
option(GREETING_BUILD_SHARED_LIBS "build greetings as a shared library" OFF)
target_compile_options(a.out PUBLIC -O2 -Wall)
target_compile_features(a.out PUBLIC cxx_std_14)
target_compile_definitions(a.out PUBLIC NDEBUG _USE_MATH_DEFINES)

add_subdirectory(src)
add_subdirectory(test)
