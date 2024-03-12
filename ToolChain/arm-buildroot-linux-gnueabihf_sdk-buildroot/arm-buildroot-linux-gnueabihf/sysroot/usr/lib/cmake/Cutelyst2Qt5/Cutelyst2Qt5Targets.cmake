# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget Cutelyst::Core Cutelyst::Session Cutelyst::View::JSON Cutelyst::StaticSimple Cutelyst::StatusMessage Cutelyst::Authentication Cutelyst::Utils::Sql Cutelyst::Utils::Pagination Cutelyst::Utils::Validator Cutelyst::Utils::LangSelect Cutelyst::UserAgent Cutelyst::CSRFProtection Cutelyst::EventLoopEPoll Cutelyst::WSGI)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# The installation prefix configured by this project.
set(_IMPORT_PREFIX "/usr")

# Create imported target Cutelyst::Core
add_library(Cutelyst::Core SHARED IMPORTED)

set_target_properties(Cutelyst::Core PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_nullptr"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/cutelyst2-qt5"
  INTERFACE_LINK_LIBRARIES "Qt5::Core;Qt5::Network"
)

# Create imported target Cutelyst::Session
add_library(Cutelyst::Session SHARED IMPORTED)

# Create imported target Cutelyst::View::JSON
add_library(Cutelyst::View::JSON SHARED IMPORTED)

# Create imported target Cutelyst::StaticSimple
add_library(Cutelyst::StaticSimple SHARED IMPORTED)

# Create imported target Cutelyst::StatusMessage
add_library(Cutelyst::StatusMessage SHARED IMPORTED)

# Create imported target Cutelyst::Authentication
add_library(Cutelyst::Authentication SHARED IMPORTED)

# Create imported target Cutelyst::Utils::Sql
add_library(Cutelyst::Utils::Sql SHARED IMPORTED)

# Create imported target Cutelyst::Utils::Pagination
add_library(Cutelyst::Utils::Pagination SHARED IMPORTED)

# Create imported target Cutelyst::Utils::Validator
add_library(Cutelyst::Utils::Validator SHARED IMPORTED)

set_target_properties(Cutelyst::Utils::Validator PROPERTIES
  INTERFACE_LINK_LIBRARIES "Cutelyst::Core"
)

# Create imported target Cutelyst::Utils::LangSelect
add_library(Cutelyst::Utils::LangSelect SHARED IMPORTED)

set_target_properties(Cutelyst::Utils::LangSelect PROPERTIES
  INTERFACE_LINK_LIBRARIES "Cutelyst::Core"
)

# Create imported target Cutelyst::UserAgent
add_library(Cutelyst::UserAgent SHARED IMPORTED)

# Create imported target Cutelyst::CSRFProtection
add_library(Cutelyst::CSRFProtection SHARED IMPORTED)

# Create imported target Cutelyst::EventLoopEPoll
add_library(Cutelyst::EventLoopEPoll SHARED IMPORTED)

set_target_properties(Cutelyst::EventLoopEPoll PROPERTIES
  INTERFACE_LINK_LIBRARIES "Qt5::Core"
)

# Create imported target Cutelyst::WSGI
add_library(Cutelyst::WSGI SHARED IMPORTED)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/Cutelyst2Qt5Targets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)