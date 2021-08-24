#include <iostream>

using namespace std;

double AddNumber(double num1, double num2) {
  return num1 + num2;
}

int main(int argc, char **argv) {
  double num1, num2;

  cout << "Digite um número:\n";
  cin >> num1;

  cout << "Digite um outro número:\n";
  cin >> num2;

  printf(
      "%.1f + %.1f = %.1f",
      num1,
      num2,
      AddNumber(num1, num2));

  cout << "\n";

  return 0;
}
