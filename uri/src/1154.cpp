#include <stdio.h>

int main(int argc, char **argv) {
  int n, i, cont = 0;
  float resultado = 0;

  do {
    scanf("%d", &n);
    if (n < 0) {
      break;
    }

    resultado += n;
    cont++;

  } while (n > 0);

  printf("%.2f\n", resultado / cont);

  return 0;
}
