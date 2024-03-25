# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_ohad_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED ohad_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(ohad_FOUND FALSE)
  elseif(NOT ohad_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(ohad_FOUND FALSE)
  endif()
  return()
endif()
set(_ohad_CONFIG_INCLUDED TRUE)

# output package information
if(NOT ohad_FIND_QUIETLY)
  message(STATUS "Found ohad: 0.0.0 (${ohad_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'ohad' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${ohad_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(ohad_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${ohad_DIR}/${_extra}")
endforeach()
