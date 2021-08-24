#include <iostream>

using namespace std;

template <typename T>
T Times2(T num) {
  return num * 2;
}

template <typename T>
T Add(T num1, T num2) {
  return num1 + num2;
}

int main(int argc, char **argv) {
  cout << Times2(5) << "\n";

  cout << Times2(5.7) << "\n";

  cout << Add(5.0, 10.2) << "\n";

  cout << Add(5, 10) << "\n";

  return 0;
}
