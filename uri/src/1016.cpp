#include <stdio.h>

int main(int argc, char **argv) {
  unsigned short int distancia;

  scanf("%hd", &distancia);

  printf("%d minutos\n", distancia * 2);

  return 0;
}
