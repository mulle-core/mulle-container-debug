# This file will be regenerated by `mulle-sourcetree-to-cmake` via
# `mulle-sde reflect` and any edits will be lost.
#
# This file will be included by cmake/share/Files.cmake
#
# Disable generation of this file with:
#
# mulle-sde environment set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: 219C3290-98C4-46E8-91FE-8F9E62B98360;mulle-c11;no-all-load,no-cmake-inherit,no-import,no-link,no-recurse,no-singlephase;
# Disable with : `mulle-sourcetree mark mulle-c11 no-header`
# Disable for this platform: `mulle-sourcetree mark mulle-c11 no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-c11 no-cmake-sdk-<name>`
#
if( NOT MULLE__C11_HEADER)
   find_file( MULLE__C11_HEADER NAMES mulle-c11.h mulle-c11/mulle-c11.h)
   message( STATUS "MULLE__C11_HEADER is ${MULLE__C11_HEADER}")

   #
   # Add MULLE__C11_HEADER to HEADER_ONLY_LIBRARIES list.
   # Disable with: `mulle-sourcetree mark mulle-c11 no-cmake-add`
   #
   set( HEADER_ONLY_LIBRARIES
      ${MULLE__C11_HEADER}
      ${HEADER_ONLY_LIBRARIES}
   )
   if( MULLE__C11_HEADER)
      # intentionally left blank
   else()
      # Disable with: `mulle-sourcetree mark mulle-c11 no-require`
      message( FATAL_ERROR "MULLE__C11_HEADER was not found")
   endif()
endif()



#
# Generated from sourcetree: 95C23FBC-93AE-4877-A6F3-AC64A607CB73;mulle-buffer;no-all-load,no-cmake-loader,no-cmake-searchpath,no-import;
# Disable with : `mulle-sourcetree mark mulle-buffer no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-buffer no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-buffer no-cmake-sdk-<name>`
#
if( NOT MULLE__BUFFER_LIBRARY)
   find_library( MULLE__BUFFER_LIBRARY NAMES
      ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-buffer${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
      ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-buffer${CMAKE_STATIC_LIBRARY_SUFFIX}
      mulle-buffer
      NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
   )
   if( NOT MULLE__BUFFER_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
      find_library( MULLE__BUFFER_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-buffer${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-buffer${CMAKE_STATIC_LIBRARY_SUFFIX}
         mulle-buffer
      )
   endif()
   message( STATUS "MULLE__BUFFER_LIBRARY is ${MULLE__BUFFER_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE__BUFFER_LIBRARY)
      #
      # Add MULLE__BUFFER_LIBRARY to DEPENDENCY_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark mulle-buffer no-cmake-add`
      #
      list( APPEND DEPENDENCY_LIBRARIES ${MULLE__BUFFER_LIBRARY})
      #
      # Inherit information from dependency.
      # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
      # Disable with: `mulle-sourcetree mark mulle-buffer no-cmake-inherit`
      #
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE__BUFFER_ROOT "${MULLE__BUFFER_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE__BUFFER_ROOT "${_TMP_MULLE__BUFFER_ROOT}" DIRECTORY)
      #
      #
      # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-buffer no-cmake-dependency`
      #
      foreach( _TMP_MULLE__BUFFER_NAME "mulle-buffer")
         set( _TMP_MULLE__BUFFER_DIR "${_TMP_MULLE__BUFFER_ROOT}/include/${_TMP_MULLE__BUFFER_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( IS_DIRECTORY "${_TMP_MULLE__BUFFER_DIR}")
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE__BUFFER_DIR}")
            #
            include( "${_TMP_MULLE__BUFFER_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE__BUFFER_DIR}")
            #
            unset( MULLE__BUFFER_DEFINITIONS)
            include( "${_TMP_MULLE__BUFFER_DIR}/Definitions.cmake" OPTIONAL)
            list( APPEND INHERITED_DEFINITIONS ${MULLE__BUFFER_DEFINITIONS})
            break()
         else()
            message( STATUS "${_TMP_MULLE__BUFFER_DIR} not found")
         endif()
      endforeach()
   else()
      # Disable with: `mulle-sourcetree mark mulle-buffer no-require-link`
      message( FATAL_ERROR "MULLE__BUFFER_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: 94398F0C-B5ED-4EB9-9A69-9C42E3B50A3B;mulle-container;no-all-load,no-cmake-loader,no-cmake-searchpath,no-import;
# Disable with : `mulle-sourcetree mark mulle-container no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-container no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-container no-cmake-sdk-<name>`
#
if( NOT MULLE__CONTAINER_LIBRARY)
   find_library( MULLE__CONTAINER_LIBRARY NAMES
      ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-container${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
      ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-container${CMAKE_STATIC_LIBRARY_SUFFIX}
      mulle-container
      NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
   )
   if( NOT MULLE__CONTAINER_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
      find_library( MULLE__CONTAINER_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-container${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-container${CMAKE_STATIC_LIBRARY_SUFFIX}
         mulle-container
      )
   endif()
   message( STATUS "MULLE__CONTAINER_LIBRARY is ${MULLE__CONTAINER_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE__CONTAINER_LIBRARY)
      #
      # Add MULLE__CONTAINER_LIBRARY to DEPENDENCY_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark mulle-container no-cmake-add`
      #
      list( APPEND DEPENDENCY_LIBRARIES ${MULLE__CONTAINER_LIBRARY})
      #
      # Inherit information from dependency.
      # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
      # Disable with: `mulle-sourcetree mark mulle-container no-cmake-inherit`
      #
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE__CONTAINER_ROOT "${MULLE__CONTAINER_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE__CONTAINER_ROOT "${_TMP_MULLE__CONTAINER_ROOT}" DIRECTORY)
      #
      #
      # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-container no-cmake-dependency`
      #
      foreach( _TMP_MULLE__CONTAINER_NAME "mulle-container")
         set( _TMP_MULLE__CONTAINER_DIR "${_TMP_MULLE__CONTAINER_ROOT}/include/${_TMP_MULLE__CONTAINER_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( IS_DIRECTORY "${_TMP_MULLE__CONTAINER_DIR}")
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE__CONTAINER_DIR}")
            #
            include( "${_TMP_MULLE__CONTAINER_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE__CONTAINER_DIR}")
            #
            unset( MULLE__CONTAINER_DEFINITIONS)
            include( "${_TMP_MULLE__CONTAINER_DIR}/Definitions.cmake" OPTIONAL)
            list( APPEND INHERITED_DEFINITIONS ${MULLE__CONTAINER_DEFINITIONS})
            break()
         else()
            message( STATUS "${_TMP_MULLE__CONTAINER_DIR} not found")
         endif()
      endforeach()
   else()
      # Disable with: `mulle-sourcetree mark mulle-container no-require-link`
      message( FATAL_ERROR "MULLE__CONTAINER_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: 8C3EA5B6-60B0-48C7-B94B-2D6CB3CD8D70;mulle-sprintf;no-all-load,no-cmake-loader,no-cmake-searchpath,no-import;
# Disable with : `mulle-sourcetree mark mulle-sprintf no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-sprintf no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-sprintf no-cmake-sdk-<name>`
#
if( NOT MULLE__SPRINTF_LIBRARY)
   find_library( MULLE__SPRINTF_LIBRARY NAMES
      ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-sprintf${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
      ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-sprintf${CMAKE_STATIC_LIBRARY_SUFFIX}
      mulle-sprintf
      NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
   )
   if( NOT MULLE__SPRINTF_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
      find_library( MULLE__SPRINTF_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-sprintf${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-sprintf${CMAKE_STATIC_LIBRARY_SUFFIX}
         mulle-sprintf
      )
   endif()
   message( STATUS "MULLE__SPRINTF_LIBRARY is ${MULLE__SPRINTF_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE__SPRINTF_LIBRARY)
      #
      # Add MULLE__SPRINTF_LIBRARY to DEPENDENCY_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark mulle-sprintf no-cmake-add`
      #
      list( APPEND DEPENDENCY_LIBRARIES ${MULLE__SPRINTF_LIBRARY})
      #
      # Inherit information from dependency.
      # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
      # Disable with: `mulle-sourcetree mark mulle-sprintf no-cmake-inherit`
      #
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE__SPRINTF_ROOT "${MULLE__SPRINTF_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE__SPRINTF_ROOT "${_TMP_MULLE__SPRINTF_ROOT}" DIRECTORY)
      #
      #
      # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-sprintf no-cmake-dependency`
      #
      foreach( _TMP_MULLE__SPRINTF_NAME "mulle-sprintf")
         set( _TMP_MULLE__SPRINTF_DIR "${_TMP_MULLE__SPRINTF_ROOT}/include/${_TMP_MULLE__SPRINTF_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( IS_DIRECTORY "${_TMP_MULLE__SPRINTF_DIR}")
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE__SPRINTF_DIR}")
            #
            include( "${_TMP_MULLE__SPRINTF_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE__SPRINTF_DIR}")
            #
            unset( MULLE__SPRINTF_DEFINITIONS)
            include( "${_TMP_MULLE__SPRINTF_DIR}/Definitions.cmake" OPTIONAL)
            list( APPEND INHERITED_DEFINITIONS ${MULLE__SPRINTF_DEFINITIONS})
            break()
         else()
            message( STATUS "${_TMP_MULLE__SPRINTF_DIR} not found")
         endif()
      endforeach()
   else()
      # Disable with: `mulle-sourcetree mark mulle-sprintf no-require-link`
      message( FATAL_ERROR "MULLE__SPRINTF_LIBRARY was not found")
   endif()
endif()
