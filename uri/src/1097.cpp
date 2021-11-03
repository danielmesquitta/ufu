#include "stdio.h"

int main(int argc, char **argv) {
  unsigned short int i, j, n;
  n = 7;
  for (i = 1; i < 10; i += 2) {
    for (j = n; j > (n - 3); j--)
      printf("I=%d J=%d\n", i, j);

    n += 2;
  }

  return 0;
}
