#include "Circle.h"

#include <cmath>

#include "Shape.h"

Circle::Circle(double width) : Shape(width) {}

Circle::~Circle() = default;

double Circle::Area() {
  return M_PI * pow((width / 2), 2);
}
