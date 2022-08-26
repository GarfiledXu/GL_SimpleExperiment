cmake_minimum_required(VERSION 3.15.0)
project(sub_gl)

find_package(OpenGL REQUIRED)


set(M_GL_INC_PATH 
${CMAKE_CURRENT_SOURCE_DIR}/glad/glad_3.3_x64_release/include 
${CMAKE_CURRENT_SOURCE_DIR}/glfw/glfw_3.3.8_x64_release/inc
CACHE INTERNAL "m_gl_inc_path" FORCE)

set(M_GL_LIB_PATH ${CMAKE_CURRENT_SOURCE_DIR} 
${CMAKE_CURRENT_SOURCE_DIR}/glfw/glfw_3.3.8_x64_release/lib/glfw3.lib
${OPENGL_gl_LIBRARY}
CACHE INTERNAL "m_gl_lib_path" FORCE)

set(M_GL_SRC_PATH ${CMAKE_CURRENT_SOURCE_DIR}
${CMAKE_CURRENT_SOURCE_DIR}/glad/glad_3.3_x64_release/src/glad.c
CACHE INTERNAL "m_gl_src_path" FORCE)


message(STATUS "sub cmake M_GL_INC_PATH:${M_GL_INC_PATH}")
message(STATUS "sub cmake M_GL_LIB_PATH:${M_GL_LIB_PATH}")
# message(STATUS "sub cmake M_GL_SRC_PATH:${M_GL_SRC_PATH}")

# include_directories(${PROJECT_NAME} M_GL_INC_PATH)
# add_library(lib_glad STATIC  ${CMAKE_CURRENT_SOURCE_DIR}/glad/glad_3.3_x64_release/src/glad.c)
# message(STATUS "sub cmake lib_glad:${lib_glad}")
# add_library(lib_gl STATIC
# lib_glad
# ${CMAKE_CURRENT_SOURCE_DIR}/glfw/glfw_3.3.8_x64_release/lib/glfw3.lib
# ${OPENGL_gl_LIBRARY}
# )
# message(STATUS "sub cmake lib_gl:${lib_gl}")
# set(test_total_lib lib_gl CACHE "test_total_lib")
