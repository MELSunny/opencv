# --- Extra HighGUI and VideoIO libs on Windows ---
if(WIN32)
  list(APPEND HIGHGUI_LIBRARIES comctl32 gdi32 ole32 setupapi ws2_32)
endif(WIN32)

if(WITH_VA)
  include("${OpenCV_SOURCE_DIR}/cmake/OpenCVFindVA.cmake")
  if(VA_INCLUDE_DIR)
    ocv_include_directories(${VA_INCLUDE_DIR})
  endif()
endif(WITH_VA)

# --- Direct Rendering Manager (DRM) support
if(WITH_DRM)
  include("${OpenCV_SOURCE_DIR}/cmake/OpenCVFindDRM.cmake")
  if(DRM_INCLUDE_DIR)
    ocv_include_directories(${DRM_INCLUDE_DIR})
  endif()
endif(WITH_DRM)