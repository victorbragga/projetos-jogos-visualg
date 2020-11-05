algoritmo "Jogo Batalha Naval - Curso Udemy - VisuALG (Portugol) - Lógica de Programação do ZERO"
// Função :
// Autor :
// Data : 03/11/2020
// Seção de Declarações 
var
tabuleiro,mascara:vetor[1..10,1..10] de caractere
linha,coluna,chances,tentativas,pontos:inteiro

//Inicia o jogo
procedimento iniciaJogo
inicio
chances<-5
para linha de 1 ate 10 faca
     para coluna de 1 ate 10 faca
          tabuleiro[linha,coluna]<-"A"
          mascara[linha,coluna]<-"*"
     fimpara
fimpara
posicionaNavios
posicionaPortaAvioes
fimprocedimento

//Mostrar o tabuleiro
procedimento mostraMascara
inicio
para linha de 1 ate 10 faca
     para coluna de 1 ate 10 faca
          escreva(" ",mascara[linha,coluna]," ")
     fimpara
     escreval
fimpara
escreval("Pontos:",pontos)
fimprocedimento

//Posiciona Navio
procedimento posicionaNavios
var
contador:inteiro
inicio

//Posiciona x navios
para contador de 1 ate 40 faca

     //Colocar em uma posição aleatória
     aleatorio 1,10
     leia(linha)
     leia(coluna)
     aleatorio off
     limpatela
     se(tabuleiro[linha,coluna] = "A")entao
          tabuleiro[linha,coluna]<-"N"
     fimse
     
fimpara

fimprocedimento


procedimento posicionaPortaAvioes
var
contador:inteiro
inicio

//Posiciona X navios
para contador de 1 ate 20 faca

     //Colocar em uma posição aleatória
     aleatorio 1,10
     leia(linha)
     leia(coluna)
     aleatorio off
     limpatela
     se(tabuleiro[linha,coluna] = "A")entao
          tabuleiro[linha,coluna]<-"P"
     fimse
     
fimpara

fimprocedimento

inicio
iniciaJogo
//Seção de Comandos
enquanto (tentativas < chances)faca
         limpatela
         mostraMascara
         escreval("Digite uma linha: ")
         leia(linha)
         escreval("Digite uma coluna: ")
         leia(coluna)
         se(mascara[linha,coluna]<>"*")entao
              escreval("Você já digitou essa coordenada!")
         senao
              mascara[linha,coluna]<-tabuleiro[linha,coluna]
              escolha tabuleiro[linha,coluna]
                 caso "N"
                      pontos<-pontos+5
                 caso "P"
                      pontos<-pontos+10
              fimescolha
         fimse
         tentativas<-tentativas+1
fimenquanto

limpatela
escreval("O jogo acabou, você fez:",pontos," pontos.")
fimalgoritmo
