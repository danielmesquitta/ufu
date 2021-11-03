#include <stdio.h>

int main(int argc, char **argv) {
  float consumo, tempo, velocidade, distancia;
  double litros;
  consumo = 12;

  scanf("%f", &tempo);
  scanf("%f", &velocidade);

  distancia = tempo * velocidade;

  litros = distancia / consumo;

  printf("%.3lf\n", litros);

  return 0;
}
