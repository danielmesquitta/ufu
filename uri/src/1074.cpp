#include <stdio.h>

int main(int argc, char **argv) {
  int x, i, y;

  scanf("%d", &x);

  for (i = 0; i < x; i++) {
    scanf("%d", &y);

    if ((y % 2 == 0) && y > 0) {
      printf("EVEN POSITIVE\n");

    } else {
      if ((y % 2 == 0) && y < 0) {
        printf("EVEN NEGATIVE\n");

      } else {
        if ((y % 2 != 0) && y > 0) {
          printf("ODD POSITIVE\n");

        } else {
          if ((y % 2 != 0) && y < 0) {
            printf("ODD NEGATIVE\n");

          } else {
            printf("NULL\n");
          }
        }
      }
    }
  }

  return 0;
}
