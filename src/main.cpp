#include <iostream>
#include "mylib.hpp"

int main() {
    MyLib lib;
    // lib.setName("this");
    std::cout << lib.getName() << std::endl;
    return 0;
}