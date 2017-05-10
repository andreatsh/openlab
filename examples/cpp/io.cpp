
#include <iostream>

int main(int argc, char **argv)
{
    std::cout << "Standard output: " << std::endl;
    std::cerr << "Standard error:  " << std::endl;

    for (int i=1; i<15; ++i)
    {
        std::cout << i*i << std::endl;
        if (i%2==0) std::cerr << "INFO: an error occur." << std::endl;
    }
}

