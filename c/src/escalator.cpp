#include <bits/stdc++.h>

#include <iostream>

using namespace std;

int main(int argc, char **argv) {
  int n, ti, di, result, curr0, curr1, curr, size;

  curr = -1;

  scanf("%d", &n);

  int matrix[n][2] = {};
  int ti0[n] = {};
  int ti1[n] = {};

  for (int i = 0; i < n; i++) {
    scanf("%d %d", &ti, &di);

    if (di == 0) {
      ti0[i] = ti;
    }

    if (di == 1) {
      ti1[i] = ti;
    }

    matrix[i][di] = ti;
  }

  size = sizeof(ti0) / sizeof(ti0[0]);
  sort(ti0, ti0 + size);

  size = sizeof(ti1) / sizeof(ti1[0]);
  sort(ti1, ti1 + size);

  for (int i = 0; i < n; i++) {
    matrix[i][0] = ti0[i];
    matrix[i + n - 1][1] = ti1[i];
  }

  for (int j = 0; j < 2; j++) {
    for (int i = 0; i < n; i++) {
      if (matrix[i][j] > 0) {
        if (curr == -1) {
          curr = matrix[i][j];
        }

        if (curr + 10 < matrix[i][j]) {
          curr = matrix[i][j];
        }

        printf("%d %d\n", matrix[i][j], j);
      }
    }
  }

  return 0;
}
