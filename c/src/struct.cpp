#include <cmath>
#include <iostream>

using namespace std;

struct Shape {
  double length, width;

  Shape(double l = 1, double w = 1) {
    length = l;
    width = w;
  }

  double Area() {
    return length * width;
  }
};

struct Circle : Shape {
  Circle(double width) {
    this->width = width;
  }

  double Area() {
    return M_PI * pow((width / 2), 2);
  }
};

int main(int argc, char **argv) {
  Shape square(10, 10);

  Circle circle(10);

  cout << square.Area() << "\n";

  cout << circle.Area() << "\n";

  return 0;
}
