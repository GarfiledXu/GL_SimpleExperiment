#include "common/common.hpp"
// #include "threshold/hello_windows.hpp"
#include "threshold/hello_triangle.hpp"

int main(int argc, char** argv) {
#ifdef HELLO_WINDOWS_HPP
   return hello_windows_test(argc, argv);
#endif
#ifdef HELLO_TRIANGLE_HPP
   return hello_triangle_test(argc, argv);
#endif
}
