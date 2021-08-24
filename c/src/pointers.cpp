#include <iostream>

using namespace std;

void become18(int* age) {
  *age = 18;
}

int main(int argc, char** argv) {
  int age = 17;

  cout << age << "\n";

  become18(&age);

  cout << age << "\n";

  return 0;
}

/*
 *  WITHOUT POINTERS:
 *
 *  int become18() {
 *    return 18;
 *  }
 *
 *  int main(int argc, char** argv) {
 *    int age = 17;
 *
 *    age = become18();
 *
 *    cout << age << "\n";
 *
 *    return 0;
 *  }
 */
