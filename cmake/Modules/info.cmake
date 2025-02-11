get_target_property(DEFINES OpenSCAD COMPILE_DEFINITIONS)

message(STATUS " ")
message(STATUS "====================================")
message(STATUS "OpenSCAD Build Configuration Summary")
message(STATUS "====================================")
message(STATUS " ")
message(STATUS "CMAKE_BUILD_TYPE:  ${CMAKE_BUILD_TYPE}")
message(STATUS "CMAKE_PREFIX_PATH: ${CMAKE_PREFIX_PATH}")
message(STATUS "SUFFIX:            ${SUFFIX}")
if (OPENSCAD_LIBRARIES)
  message(STATUS "OPENSCAD_LIBRARIES: $ENV{OPENSCAD_LIBRARIES}")
endif()
message(STATUS " ")
message(STATUS "Experimental Features: ${EXPERIMENTAL}")
message(STATUS "Snapshot build:        ${SNAPSHOT}")
message(STATUS "Headless build:        ${HEADLESS}")
message(STATUS "NULLGL build:          ${NULLGL}")
message(STATUS "Profiling/coverage:    ${PROFILE}")
message(STATUS "Use mimalloc:          ${USE_MIMALLOC}")
message(STATUS "CSG node id-prefix:    ${IDPREFIX}")
message(STATUS "Offline documentation: ${OFFLINE_DOCS}")
message(STATUS " ")
message(STATUS "GL Offscreen Context:  ${OFFSCREEN_METHOD}")
message(STATUS "lib3mf:                ${LIB3MF_API}")
message(STATUS " ")
message(STATUS "Input Drivers")
if("ENABLE_HIDAPI" IN_LIST DEFINES)
  message(STATUS "- HID API Driver (enabled)")
else()
  message(STATUS "- HID API Driver (disabled)")
endif()
if("ENABLE_SPNAV" IN_LIST DEFINES)
  message(STATUS "- Space Navigator Library Driver (enabled)")
else()
  message(STATUS "- Space Navigator Library Driver (disabled)")
endif()
if("ENABLE_JOYSTICK" IN_LIST DEFINES)
  message(STATUS "- Joystick Driver (enabled)")
else()
  message(STATUS "- Joystick Driver (disabled)")
endif()
if("ENABLE_DBUS" IN_LIST DEFINES)
  message(STATUS "- DBus Remote Driver (enabled)")
else()
  message(STATUS "- DBus Remote Driver (disabled)")
endif()
message(STATUS " ")
message(STATUS "DEFINES = ${DEFINES}")
message(STATUS " ")
