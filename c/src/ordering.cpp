#include <bits/stdc++.h>

#include <iostream>

using namespace std;

int main(int argc, char **argv) {
  int N, K, ni, ci, size;

  char response = 'Y';

  scanf("%d %d", &N, &K);

  int arr[K][N] = {};

  for (int i = 0; i < N; i++) {
    scanf("%d %d", &ni, &ci);

    arr[ci - 1][i] = ni;
  }

  for (int i = 0; i < K; i++) {
    size = sizeof(arr[i]) / sizeof(arr[i][0]);

    sort(arr[i], arr[i] + size);
  }

  for (int i = 0; i < K; i++) {
    ni = arr[i][0];
    size = sizeof(arr[i]) / sizeof(arr[i][0]);
    int lastNi = arr[i][size - 1];

    for (int j = 0; j < K; j++) {
      if (i != j) {
        int compNi = arr[j][0];
        size = sizeof(arr[j]) / sizeof(arr[j][0]);
        int compLastNi = arr[j][size - 1];

        if ((compNi > ni && compNi < lastNi) || (compLastNi < lastNi && compLastNi > ni)) {
          response = 'N';
        }
      }
    }
  }

  cout << response << '\n';

  return 0;
}
