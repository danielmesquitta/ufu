#include <stdio.h>

#include <iostream>
#include <memory>
#include <vector>

using namespace std;

int main(int argc, char **argv) {
  int amountOfSpaceToStore;

  cout << "How many numbers do you want to store\n";
  cin >> amountOfSpaceToStore;

  int *pNums;

  pNums = (int *)malloc(amountOfSpaceToStore * sizeof(int));

  if (pNums != NULL) {
    int i = 0;

    while (i < amountOfSpaceToStore) {
      cout << "Enter a Number\n";

      cin >> pNums[i];

      i++;
    }
  }

  cout << "You entered these numbers\n";

  for (int i = 0; i < amountOfSpaceToStore; i++) {
    cout << pNums[i] << "\n";
  }

  delete pNums;

  return 0;
}
