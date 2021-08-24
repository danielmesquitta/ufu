#include <iostream>
#include <vector>

using namespace std;

int main(int argc, char **argv) {
  vector<int> numbers;

  int currNum = -1,
      i = 0;

  cout << "Digite numeros: (use 0 para parar)\n";

  while (currNum != 0) {
    cin >> currNum;

    numbers.push_back(currNum);

    i++;
  }

  cout << "\n";

  for (auto num : numbers) cout << num << "\n";

  return 0;
}
