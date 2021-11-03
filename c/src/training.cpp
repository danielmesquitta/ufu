#include <iostream>

using namespace std;

int main(int argc, char **argv) {
  int n;

  scanf("%d", &n);

  if (n % 2 == 0) {
    for (int i = 0; i < n / 2; i++) {
      printf("AB");
    }
  } else {
    printf("IMPOSSIBLE");
  }

  printf("\n");
  return 0;
}
