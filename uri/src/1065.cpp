#include <stdio.h>

int main(int argc, char **argv) {
  int i, cont = 0, a;

  for (i = 0; i < 5; i++) {
    scanf("%d", &a);
    if (a % 2 == 0) {
      cont++;
    }
  }

  printf("%d valores pares\n", cont);

  return 0;
}
