find_path(XF86DRM_H_PATH NAMES xf86drm.h)
find_path(DRM_H_PATH NAMES drm.h PATH_SUFFIXES libdrm drm)
find_library(DRM_LIBRARY drm)

set(DRM_INCLUDE_DIRS "")
set(DRM_LIBRARIES "")

if(XF86DRM_H_PATH AND DRM_H_PATH AND DRM_LIBRARY)
    set(HAVE_DRM TRUE)
    set(DRM_INCLUDE_DIRS ${XF86DRM_H_PATH} ${DRM_H_PATH})
    set(DRM_LIBRARIES ${DRM_LIBRARY})

    mark_as_advanced(XF86DRM_H_PATH)
    mark_as_advanced(DRM_H_PATH)
    mark_as_advanced(DRM_LIBRARY)

    message(STATUS "Found DRM: YES (${DRM_LIBRARY})")
else()
    set(HAVE_DRM FALSE)
    message(STATUS "Found DRM: NO (drm.h or xf86drm.h or libdrm not found)")
endif()