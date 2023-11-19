#include <iostream>
#include "mylib.hpp"
#include "test.h"

int main() {
    MyLib lib;
    lib.setName("this");

    printTest();
    
    std::cout << lib.getName() << std::endl;
    return 0;
}