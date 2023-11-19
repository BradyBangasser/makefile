#include "include/mylib.hpp"
#include <string>

MyLib::MyLib() {
    libName = "";
}

MyLib::MyLib(std::string libName) {
    this->libName = libName;
}

void MyLib::setName(std::string libName) {
    this->libName = libName;
}