# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(tau_war_library VERSION 0.0.1 LANGUAGES C)

add_library(tau_war SHARED
  "tau_war.c"
)

set_target_properties(tau_war PROPERTIES
  PUBLIC_HEADER tau_war.h
  OUTPUT_NAME "tau_war"
)

target_compile_definitions(tau_war PUBLIC DART_SHARED_LIB)

if (ANDROID)
  # Support Android 15 16k page size
  target_link_options(tau_war PRIVATE "-Wl,-z,max-page-size=16384")
endif()
