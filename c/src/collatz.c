#include <stdio.h>

int collatz(int number) {
  printf("%d\n", number);

  if (number == 1) {
    // Stop recursion
    return 0;
  } else if (number % 2 == 0) {
    // Even numbers
    return collatz(number / 2);
  } else {
    // Odd numbers
    return collatz(3 * number + 1);
  }
}

int main() {
  int initialNumber;

  if (scanf("%d", &initialNumber) == 1 && initialNumber > 0) {
    // If number is a integer greater than 0
    collatz(initialNumber);
  } else {
    // If is invalid value
    printf("0\n");
  }
}
