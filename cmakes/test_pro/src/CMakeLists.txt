if(GREETING_BUILD_SHARED_LIBS)
  add_library(greetings SHARED hello.cpp good_morning.cpp)
else()
  add_library(greetings SHARED hello.cpp good_morning.cpp)
endif()

target_include_directories(greetings
  PUBLIC ${PROJECT_SOURCE_DIR}/include
)