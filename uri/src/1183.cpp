#include <stdio.h>

int main(int argc, char **argv) {
  float m[12][12], soma = 0, media = 0;
  unsigned short int i, j, cont = 0;
  char operacao;

  scanf("%c", &operacao);

  for (i = 0; i < 12; i++)
    for (j = 0; j < 12; j++)
      scanf("%f", &m[i][j]);

  if (operacao == 'S') {
    for (i = 0; i < 12; i++)
      for (j = 0; j < 12; j++)
        if (i < j)
          soma += m[i][j];

    printf("%.1f\n", soma);

  } else {
    if (operacao == 'M') {
      for (i = 0; i < 12; i++)
        for (j = 0; j < 12; j++)
          if (i < j) {
            media += m[i][j];
            cont++;
          }
    }
  }

  printf("%.1f\n", media / cont);

  return 0;
}
