#include <iostream>
#include <iterator>

int main(int argc, char *argv[]) {
  std::cout << "hello";
  for (int i = 1; i < 20; i++) {
    std::cout << "hello again" << std::endl;
  }
  return 0;
}
