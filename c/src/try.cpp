#include <cmath>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <limits>
#include <numeric>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

double divideNumbers(double num1, double num2) {
  try {
    if (num1 == 0) {
      throw "Division by Zero Error";
    }

    return num1 / num2;
  } catch (const char* exp) {
    cout << "Error: " << exp << "\n";
  }
}

int main(int argc, char** argv) {
  double num1, num2;

  cout << "Type a number:\n";
  cin >> num1;

  cout << "Type another number:\n";
  cin >> num2;

  double division = divideNumbers(num1, num2);

  if (division) {
    printf("The division of %.1f by %.1f is equal to %.1f\n",
           num1,
           num2,
           division);
  }

  return 0;
}
