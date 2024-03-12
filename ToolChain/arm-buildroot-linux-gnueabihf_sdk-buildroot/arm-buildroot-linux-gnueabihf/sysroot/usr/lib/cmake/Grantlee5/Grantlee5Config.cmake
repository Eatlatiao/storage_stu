# Grantlee CMake configuration file - http://www.grantlee.org/

# Any changes in this file will be overwritten by CMake.

if (Grantlee5_FIND_COMPONENTS)
  foreach( component ${Grantlee5_FIND_COMPONENTS})
    if (component STREQUAL "Textdocument")
      set(RequiredQtComponents ${RequiredQtComponents} Gui)
    endif()
    if (component STREQUAL "Templates")
      set(RequiredQtComponents ${RequiredQtComponents} Core)
    endif()
  endforeach()
  find_package(Qt5 REQUIRED ${RequiredQtComponents})
else()
  find_package(Qt5Gui REQUIRED)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/GrantleeTargets.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/GrantleeMacros.cmake")
