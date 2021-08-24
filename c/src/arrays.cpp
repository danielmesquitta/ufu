#include <iostream>

using namespace std;

int main(int argc, char **argv) {
  int matriz[2][2] = {
      {1, 2},
      {3, 4},
  };

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      // same as printf("%d\n", matriz[i][j]);
      cout << matriz[i][j] << "\n";
    }
  }

  string names[] = {
      "Daniel",
      "Eduardo",
      "Rodrigo",
      "Amanda",
  };

  for (auto name : names) cout << name << "\n";

  printf("First name first char: \"%c\"\n", names[0][0]);

  return 0;
}
