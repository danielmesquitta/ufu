#include <iostream>

using namespace std;

int main(int argc, char **argv) {
  int Q, ti, xi, id;

  id = 1;

    scanf("%d", &Q);

  while (Q > 0) {
    scanf("%d %d", &ti, &xi);

    switch (ti) {
      case 1:
        id++;
        break;

      case 2:
        printf("%d", id);
        break;

      default:
        break;
    }

    Q--;
  }

  printf("\n");
  return 0;
}
