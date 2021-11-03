#include <stdio.h>

int main(int argc, char **argv) {
  int x, i, resultado = 0;
  scanf("%d", &x);

  for (i = 1; i <= 10; i++) {
    resultado = i * x;
    printf("%d x %d = %d\n", i, x, resultado);
  }

  return 0;
}
