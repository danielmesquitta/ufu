#include <math.h>
#include <stdio.h>

int main(int argc, char **argv) {
  double pi, volume;
  unsigned short int raio;
  pi = 3.14159;
  scanf("%hd", &raio);

  volume = (4 / 3.0) * pi * pow(raio, 3);

  printf("VOLUME = %.3lf\n", volume);

  return 0;
}
