#include <iostream>

using namespace std;

int main(int argc, char **argv) {
  int T, D, M, yi;

  char result = 'N';

  scanf("%d %d %d", &T, &D, &M);

  int meals[M] = {};

  for (int i = 0; i < M; i++) {
    scanf("%d", &yi);

    meals[i] = yi;
  }

  int i = 0;

  while (i < M) {
    if (i > 0 && (meals[i] - meals[i - 1]) >= T) {
      result = 'Y';
    }

    i++;
  }

  i--;

  if ((meals[i] - D) >= T) {
    result = 'Y';
  }

  if (M == 0 && D <= T) {
    result = 'Y';
  }

  cout << result << "\n";

  return 0;
}
