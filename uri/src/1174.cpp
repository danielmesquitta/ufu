#include <stdio.h>

int main(int argc, char **argv) {
  float n, x[100];
  int i;

  for (i = 0; i < 100; i++) {
    scanf("%f", &n);
    x[i] = n;
  }

  for (i = 0; i < 100; i++) {
    if (x[i] <= 10) {
      printf("A[%d] = %.1f\n", i, x[i]);
    }
  }

  return 0;
}
