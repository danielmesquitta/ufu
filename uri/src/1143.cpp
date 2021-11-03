#include "math.h"
#include "stdio.h"

int main(int argc, char **argv) {
  unsigned short int n, i, j;

  scanf("%hd", &n);

  for (i = 1; i <= n; i++)
    printf("%d %.0lf %.0lf\n", i, pow(i, 2), pow(i, 3));

  return 0;
}
