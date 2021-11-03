#include <stdio.h>

int main(int argc, char **argv) {
  unsigned short int funcionario, horas;
  float valor, salario;

  scanf("%hd", &funcionario);
  scanf("%hd", &horas);
  scanf("%f", &valor);

  salario = horas * valor;

  printf("NUMBER = %d\n", funcionario);
  printf("SALARY = U$ %.2f\n", salario);

  return 0;
}
