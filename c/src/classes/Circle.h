#ifndef CIRCLE_H
#define CIRCLE_H

#include "Shape.h"

class Circle : public Shape {
 public:
  Circle();

  Circle(const Circle& orig);

  Circle(double width);

  virtual ~Circle();

  double Area();
};

#endif /* CIRCLE_H */
