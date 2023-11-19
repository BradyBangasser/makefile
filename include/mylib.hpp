#include <string>

class MyLib {
    private:
        std::string libName;
    public:
        MyLib();
        MyLib(std::string libName);

        inline std::string getName() { return libName; }
        void setName(std::string libName); 
};