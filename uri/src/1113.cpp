#include <stdio.h>

int main(int argc, char **argv) {
  int x, y;
  scanf("%d %d", &x, &y);

  while (x != y) {
    if (y > x) {
      printf("Crescente\n");

    } else {
      printf("Decrescente\n");
    }
    scanf("%d %d", &x, &y);
  }

  return 0;
}
