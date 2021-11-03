#include <stdio.h>

int main() {
  int n, i, a, b, c, k;
  scanf("%i", &n);
  for (i = 0; i < n; i++) {
    c = 0;
    scanf("%i %i", &a, &b);
    if (a > b) {
      a += b;
      b = a - b;
      a -= b;
    }
    for (k = a + 1; k < b; k++) {
      if (k % 2 == 1) c += k;
    }
    printf("%i\n", c);
  }
  return 0;
}
