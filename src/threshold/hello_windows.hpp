#ifndef HELLO_WINDOWS_HPP
#define HELLO_WINDOWS_HPP

#include "../common/common.hpp"

void FramebuffSize_CB(GLFWwindow* window, int width, int height) {
    glViewport(0, 0, width, height);
}


int cp1(void) {
    int ret = glfwInit();
    if (GLFW_TRUE != ret) {
        LOG_EROR("glfw init fail! ret = %d\n", ret);
        exit(1);
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    LOG_INFO("glfwWindowHint end!\n");
    getchar();
    GLFWwindow* window = glfwCreateWindow(1000, 1000, "glfw_window_test", NULL, NULL);
    if (NULL == window) {
        LOG_EROR("glfw create window fail!\n");
        glfwTerminate();
        return -1;
    }
    LOG_INFO("create window end!\n");
    getchar();
    glfwMakeContextCurrent(window);
    LOG_INFO("glfwMakeContextCurrent end!\n");
    getchar();
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        LOG_EROR("gl load fail!\n");
        return -1;
    }
    
    glfwSetFramebufferSizeCallback(window, FramebuffSize_CB);
    
    for (;!glfwWindowShouldClose(window);) {
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
            glfwSetWindowShouldClose(window, true);
        }
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glfwSwapBuffers(window);
        glfwPollEvents();
        LOG_INFO("rendering loop one times!\n");
        getchar();
    }

    glfwTerminate();
    return 0;
}


int hello_windows_test(int argc, char** argv) {
    printf("hello windows demo open!\n");
    return cp1();
}



#endif