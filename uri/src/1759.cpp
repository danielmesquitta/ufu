#include <stdio.h>

int main(int argc, char **argv) {
  long int n;

  scanf("%ld", &n);

  for (long int i = 0; i < n - 1; i++)
    printf("Ho ");

  printf("Ho!\n");
}
