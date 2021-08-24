#include <iostream>
#include <list>

using namespace std;

int main(int argc, char **argv) {
  int arr[5] = {1, 2, 3, 4, 5};

  list<int> lst;

  lst.insert(lst.begin(), arr, arr + 5);

  lst.push_back(5);

  lst.push_back(1);

  for (int i : lst)
    cout << i << endl;

  // You cannot access list values by index, just by iterators
  list<int>::iterator secondIndex = lst.begin();

  advance(secondIndex, 1);

  cout << *secondIndex << endl;

  return 0;
}
