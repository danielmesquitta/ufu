#include <cmath>
#include <iostream>

#include "Circle.h"
#include "Shape.h"

using namespace std;

int main(int argc, char **argv) {
  Shape square(10, 5);

  Circle circle(10);

  cout << square.Area() << "\n";

  cout << circle.Area() << "\n";

  return 0;
}
