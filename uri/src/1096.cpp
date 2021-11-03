#include "stdio.h"

int main(int argc, char **argv) {
  unsigned short int i, j;

  i = 1;
  while (i < 10) {
    j = 7;
    while (j > 4) {
      printf("I=%d J=%d\n", i, j);
      j--;
    }

    i += 2;
  }

  return 0;
}
