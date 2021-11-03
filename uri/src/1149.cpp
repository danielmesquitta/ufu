#include "stdio.h"

int main(int argc, char **argv) {
  int a, n, soma = 0;

  scanf("%d", &a);

  do {
    scanf("%d", &n);

  } while (n <= 0);

  for (unsigned short i = 0; i < n; i++)
    soma += a + i;

  printf("%d\n", soma);

  return 0;
}
