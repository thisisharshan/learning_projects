#include <iostream>
#include <vector>

int main() {
    // If JetBrains Mono is working, the '=>' and '==' will look sharp
    std::vector<std::string> status = {"Arch", "VS-Code-OSS", "Clangd"};
    
    std::cout << "Testing C++20 Features..." << std::endl;
    for (const auto& item : status) {
        std::cout << "Checking: " << item << " [OK]" << std::endl;
    }

    return 0;
}