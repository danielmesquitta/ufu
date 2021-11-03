#include <stdio.h>

int main(int argc, char **argv) {
  unsigned short int tamanho, coluna, linha, iniMatriz, fimMatriz, elemento;

  while (1) {
    scanf("%hd", &tamanho);
    short m[tamanho][tamanho];

    if (tamanho == 0)
      return 0;

    iniMatriz = 0;
    fimMatriz = tamanho;
    elemento = 1;

    while (1) {
      for (linha = iniMatriz; linha < fimMatriz; linha++)
        for (coluna = iniMatriz; coluna < fimMatriz; coluna++)
          m[linha][coluna] = elemento;

      if (fimMatriz == 0)
        break;

      fimMatriz--;
      iniMatriz++;
      elemento++;
    }

    for (linha = 0; linha < tamanho; linha++) {
      for (coluna = 0; coluna < tamanho; coluna++) {
        if (coluna == 0)
          printf("%3hd", m[linha][coluna]);
        else
          printf(" %3hd", m[linha][coluna]);
      }

      printf("\n");
    }

    printf("\n");
  }
}
