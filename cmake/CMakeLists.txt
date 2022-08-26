cmake_minimum_required(VERSION 3.15.5)

project(gl_cmake_test)
set(CMAKE_GENERATOR_PLATFORM win32)

message(STATUS "===>CMAKE_BUILD_TYPE:${CMAKE_BUILD_TYPE}")
set(parent_cmake_dir ${CMAKE_CURRENT_SOURCE_DIR})
set(project_dir ${parent_cmake_dir}/..)
set(EXECUTABLE_OUTPUT_PATH ${project_dir}/out)


set(total_src_list "D:/CODE_SAPCE_WIN/vs/repos/GL_Test/Item/GL_TEST2_CMAKEconfig/src/main.cpp")
set(total_lib_list )
set(total_inc_list "D:/CODE_SAPCE_WIN/vs/repos/GL_Test/Item/GL_TEST2_CMAKEconfig/inc")



set(m_gl_dir ${project_dir}/m_gl)
add_subdirectory(${m_gl_dir} ${parent_cmake_dir}/build/m_gl/ )
message(STATUS "main cmake M_GL_INC_PATH:${M_GL_INC_PATH}")
message(STATUS "main cmake M_GL_LIB_PATH:${M_GL_LIB_PATH}")
message(STATUS "main cmake M_GL_SRC_PATH:${M_GL_SRC_PATH}")

list(APPEND total_src_list ${M_GL_SRC_PATH})
list(APPEND total_lib_list ${M_GL_LIB_PATH})
list(APPEND total_inc_list ${M_GL_INC_PATH})

message(STATUS "main cmake total_src_list:${total_src_list}")
message(STATUS "main cmake total_lib_list:${total_lib_list}")
message(STATUS "main cmake total_inc_list:${total_inc_list}")

add_executable(
    ${PROJECT_NAME}
    ${total_src_list}
)
# target_sources(${PROJECT_NAME} PUBLIC ${total_src_list})
target_include_directories(${PROJECT_NAME}  PUBLIC ${total_inc_list})
target_link_libraries(${PROJECT_NAME} ${total_lib_list})