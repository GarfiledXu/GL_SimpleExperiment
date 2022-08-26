#include <windows.h>
#include <stdio.h>


#include <glad/glad.h>
#include <glfw3.h>



int main(int agc, char** agv) {

	int ret = glfwInit();
	if (GLFW_TRUE != ret) {
		printf("glfwInit fail! ret = %d\n", ret);
		exit(1);
	}
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwTerminate();
	getchar();
	
	return 0;
}