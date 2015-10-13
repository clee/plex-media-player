# We want OpenGL or OpenGLES2
find_package(OpenGL)
if(NOT OPENGL_FOUND)
  find_package(GLES2)
  if(NOT GLES2_FOUND)
    message(FATAL_ERROR "OpenGL or GLES2 is required")
  else(NOT GLES2_FOUND)
    set(OPENGL_LIBS ${GLES2_LIBRARY})
  endif(NOT GLES2_FOUND)
else(NOT OPENGL_FOUND)
  set(OPENGL_LIBS ${OPENGL_gl_LIBRARY})
endif(NOT OPENGL_FOUND)

find_package(MPV REQUIRED)

include_directories(${MPV_INCLUDE_DIR})