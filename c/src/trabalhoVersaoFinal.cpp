#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <locale.h>

struct voo{
    char cidadePartida[30];
    char cidadeDestino[30];
    int tempoDeVoo;
    int qtdPassageiros;
};

int retornaVoo(char* msg){
    int n;

    printf("\n%s\n", msg);
    scanf("%d", &n);
    setbuf(stdin, NULL);

    return n;
}

void deletarUm(struct voo T[], int* qtdTotalCadastrada){
    int del = 0;
    bool isUltimo;

    system("cls");

    if(*qtdTotalCadastrada <= 0){
        printf("\nNão existe dados cadastrados...\n\n");
        system("pause");
        system("cls");
        return;
    }

    printf("\n******************* DELEÇÃO *******************\n");
    for(int i = 0; i < *qtdTotalCadastrada; i++){
        printf("\n%d- Para deletar o voo (%s -- %s)\n", i+1, T[i].cidadePartida, T[i].cidadeDestino);
    }
    printf("\n***********************************************\n");

    del = retornaVoo("Qual voo você deseja deletar?");

    if((del - 1) == *qtdTotalCadastrada) isUltimo = true;

    if (del <= *qtdTotalCadastrada){
        if(isUltimo){
            strcpy( T[del - 1].cidadePartida, "");
            strcpy( T[del - 1].cidadeDestino, "");
            T[del - 1].tempoDeVoo     = 0;
            T[del - 1].qtdPassageiros = 0;
        }
        else {
            for(int i = del; i < *qtdTotalCadastrada; i++){
                strcpy(T[i - 1].cidadePartida, T[i].cidadePartida);
                strcpy(T[i - 1].cidadeDestino, T[i].cidadeDestino);
                T[i - 1].tempoDeVoo          = T[i].tempoDeVoo;
                T[i - 1].qtdPassageiros      = T[i].qtdPassageiros;
            }
            strcpy( T[*qtdTotalCadastrada - 1].cidadePartida, "");
            strcpy( T[*qtdTotalCadastrada - 1].cidadeDestino, "");
            T[*qtdTotalCadastrada - 1].tempoDeVoo     = 0;
            T[*qtdTotalCadastrada - 1].qtdPassageiros = 0;
        }
        *qtdTotalCadastrada = *qtdTotalCadastrada - 1;
        printf("\nDeleção realizada com sucesso!\n");
    }
    else {
        printf("\nEste voo não pode ser deletado pois não está cadastrado!\n");
    }

    printf("\n");
	system("pause");
	system("cls");
}

void cadastro(struct voo T[], int* qtdTotalCadastrada){
    system("cls");
    int n = retornaVoo("Quantos voos deseja cadastrar?");

    if( n <= 0 ) {
        system("cls");
        printf("\nValor inválido!\n");
        system("pause");
        system("cls");
        return;
    }

	for(int i = *qtdTotalCadastrada; i < *qtdTotalCadastrada + n; i++){
        printf("\n*************** VOO %d ***************\n", i + 1);
		printf("\nDigite o nome da cidade de partida:\n");
		scanf("%[^\n]", T[i].cidadePartida);
		setbuf(stdin, NULL);

		printf("\nDigite o nome da cidade de destino\n");
		scanf("%[^\n]", T[i].cidadeDestino);
		setbuf(stdin, NULL);

        printf("\nDigite a duração de tempo do voo em horas\n");
		scanf("%d", &T[i].tempoDeVoo);
		setbuf(stdin, NULL);

		printf("\nDigite a quantidade de passageiros no voo\n");
		scanf("%d", &T[i].qtdPassageiros);
		setbuf(stdin, NULL);
	}

	*qtdTotalCadastrada += n;

	system("cls");
	printf("\nCadastro(s) realizado(s) com sucesso!\n\n");
	system("pause");
	system("cls");
}

void mostra(struct voo T[], int tamanho){

    system("cls");

    if(tamanho <= 0){
        system("cls");
        printf("\nNão existem voos cadastrados!\n");
        system("pause");
        system("cls");
        return;
    }

	for(int i = 0; i < tamanho; i++){
		printf("\nCidade de partida          : %s\n", T[i].cidadePartida);
		printf("Cidade de destino          : %s\n", T[i].cidadeDestino);
		printf("Tempo de voo em horas      : %d\n", T[i].tempoDeVoo);
		printf("Quantidade de passageiros  : %d\n", T[i].qtdPassageiros);
	}

	if(tamanho == 0) printf("\nNão existem Voos cadastrados!\n");

	printf("\n");
	system("pause");
	system("cls");
}

void mostra1(struct voo T[], int tamanho){
    system("cls");

    int n = retornaVoo("Qual voo você deseja visualizar?");

    if (n <= 0){printf("Voo inválido!\n"); return;}
    else if(tamanho == 0 || n > tamanho) {
            printf("\nEsse Voo ainda não está cadastrado!\n");
            printf("\n");
            system("pause");
            system("cls");
            return;}

    printf("\nCidade de partida          : %s\n", T[n - 1].cidadePartida);
    printf("Cidade de destino          : %s\n", T[n - 1].cidadeDestino);
    printf("Tempo de voo em horas      : %d\n", T[n - 1].tempoDeVoo);
    printf("Quantidade de passageiros  : %d\n", T[n - 1].qtdPassageiros);

    printf("\n");
	system("pause");
	system("cls");
}

void geraNomeArquivo(char* titulo, char text_titulo[50], char extensao[10]){
    struct tm *data_hora_atual;
    time_t segundos;

    time(&segundos);
    data_hora_atual = localtime(&segundos);

    sprintf(titulo, "%s_%d%d%d%d%d%d.%s", text_titulo, data_hora_atual->tm_mday, data_hora_atual->tm_mon+1,
                                                        data_hora_atual->tm_year+1900, data_hora_atual->tm_hour,
                                                        data_hora_atual->tm_min, data_hora_atual->tm_sec, extensao);
}

void gerarRelatorio(struct voo T[], int tamanho){
    FILE *file;
    char tituloFinal[50];

    system("cls");
    geraNomeArquivo(tituloFinal, "relatorio_voo", "csv");
    file = fopen( tituloFinal, "w+" );

    if (file == NULL){
        fprintf(stderr, "\nErro ao abrir arquivo!\n");
        exit (1);
    }

    fprintf(file, "sep=,\n");
    fprintf(file, "ID,Cidade de Partida,Cidade de Destino,Tempo de voo em horas,Quantidade de passageiros\n");
    for(int i = 0; i < tamanho; i++){
        fprintf(file, "%d,", i+1);
		fprintf(file, "%s,", T[i].cidadePartida);
		fprintf(file, "%s,", T[i].cidadeDestino);
		fprintf(file, "%d,", T[i].tempoDeVoo);
		fprintf(file, "%d\n", T[i].qtdPassageiros);
	}

	printf("\nRelatório gerado com sucesso!\n");
    fclose(file);

    printf("\n");
	system("pause");
	system("cls");
}

void salvarInfoVooArq(struct voo T[], int tamanho){

    system("cls");

    FILE *file;
    file = fopen( "voo.txt", "w+" );

    if (file == NULL){
        fprintf(stderr, "\nErro ao abrir arquivo!\n");
        exit(1);
    }

    for(int i = 0; i < tamanho; i++){
		fprintf(file, "%s\n", T[i].cidadePartida);
		fprintf(file, "%s\n", T[i].cidadeDestino);
		fprintf(file, "%d\n", T[i].tempoDeVoo);
		fprintf(file, "%d\n", T[i].qtdPassageiros);
	}

	printf("\nVoo(s) salvo(s) com sucesso!\n");
    fclose(file);

    printf("\n");
	system("pause");
	system("cls");
}


void loadDoArquivo(struct voo T[], int* qtdTotalCadastrada){

    system("cls");

    FILE *file;
    int i = 0;

    file = fopen( "voo.txt", "r" );
    rewind(file); // retorna a posição do arquivo para o início

    if (file == NULL){
        fprintf(stderr, "\nErro ao abrir arquivo!\n");
        exit(1); // indica que houve algum erro ao completar a ação
    }

    while(1){
        fscanf(file, "%[^\n]\n%[^\n]\n%d\n%d\n", T[i].cidadePartida, T[i].cidadeDestino, &T[i].tempoDeVoo, &T[i].qtdPassageiros);
        i++;
        if(feof(file)) break;
    }
    *qtdTotalCadastrada = i;

    printf("\nInformações carregadas com sucesso!\n");
    fclose(file);

    printf("\n");
	system("pause");
	system("cls");
}

void exibirMsgComandoDesconhecido(){
    system("cls");

    printf("\nComando Desconhecido!\n");

    printf("\n");
	system("pause");
	system("cls");
}

void menu(){
    int qtdTotalCadastrada = 0, opcao;
	struct voo P[30];

    setlocale(LC_ALL, "Portuguese");

	while(1){
        printf("\n*********************************************************************************\n");
		printf("\n  Bem vindo ao Sistema de Informação para controle de voos de uma empresa aérea\n");
		printf("\n*********************************************************************************\n");
		printf("\n1- Cadastrar Voos");
		printf("\n2- Mostrar Todos os Voos");
		printf("\n3- Mostrar um Voo");
		printf("\n4- Gerar Relatório de Voos");
		printf("\n5- Salvar em Arquivo as Informações do(s) Voo(s)");
		printf("\n6- Carregar Informações do Arquivo");
		printf("\n7- Deletar um Voo ");
		printf("\n8- Sair ");
		printf("\nDigite a opção: ");
		scanf("%d", &opcao);

		if(opcao == 1) cadastro(P, &qtdTotalCadastrada);
		if(opcao == 2) mostra(P, qtdTotalCadastrada);
		if(opcao == 3) mostra1(P, qtdTotalCadastrada);
		if(opcao == 4) gerarRelatorio(P, qtdTotalCadastrada);
		if(opcao == 5) salvarInfoVooArq(P, qtdTotalCadastrada);
		if(opcao == 6) loadDoArquivo(P, &qtdTotalCadastrada);
		if(opcao == 7) deletarUm(P, &qtdTotalCadastrada);
		if(opcao == 8) return;
		if(opcao > 8 || opcao < 1) exibirMsgComandoDesconhecido();
	}
}

int main(){
	menu();
}
