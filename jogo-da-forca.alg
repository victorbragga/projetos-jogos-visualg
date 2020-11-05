algoritmo "Jogo da Forca - Curso Udemy - VisuALG (Portugol) - Lógica de Programação do ZERO"
// Função :
// Autor :
// Data : 29/10/2020
// Seção de Declarações 
var
palavra,palavraComAcertos:vetor[0..2] de caractere
indiceAleatorio,errosAtuais,errosPermitidos,contador,opcaoReinicio:inteiro
tentativa:caractere
acertou:logico

//Procedimento de novo jogo
procedimento iniciaJogoNovo
inicio
errosAtuais<-0
errosPermitidos<-5
palavraComAcertos[0]<-"-"
palavraComAcertos[1]<-"-"
palavraComAcertos[2]<-"-"

aleatorio 1,3
leia(indiceAleatorio)
limpatela
aleatorio off

escolha indiceAleatorio
     caso 1
          palavra[0]<-"s"
          palavra[1]<-"o"
          palavra[2]<-"l"
     caso 2
          palavra[0]<-"b"
          palavra[1]<-"o"
          palavra[2]<-"i"
     caso 3
          palavra[0]<-"c"
          palavra[1]<-"h"
          palavra[2]<-"a"
fimescolha

enquanto (errosAtuais < errosPermitidos)faca
     limpatela
     escreval("Tentativas:",errosPermitidos - errosAtuais)
     escreval("Palavra:",palavraComAcertos[0],palavraComAcertos[1],palavraComAcertos[2])
     leTentativa
     verificaEstado
fimenquanto

limpatela
escreval("Você perdeu!")
menuReinicio

fimprocedimento

//Lê a tentativa
procedimento leTentativa
inicio
escreval("Digite uma letra: ")
     leia(tentativa)

     //Verificando se acertou
     para contador de 0 ate 2 faca
          //Se encontrar a letra
          se(tentativa = palavra[contador])entao
               palavraComAcertos[contador]<-tentativa
               acertou<-verdadeiro
          fimse
     fimpara

     se(acertou <> verdadeiro)entao
          errosAtuais<-errosAtuais + 1
           acertou<-falso
     fimse
fimprocedimento

//Verifica estado do jogo
procedimento verificaEstado
var
acertos:inteiro
inicio
para contador de 0 ate 2 faca
     se(palavraComAcertos[contador] = palavra[contador])entao
          acertos<-acertos+1
     fimse
fimpara

se(acertos = 3)entao
     limpatela
     escreval("Você Venceu!")
     menuReinicio
fimse

fimprocedimento

//Menu de Reinicio
procedimento menuReinicio
inicio
escreval("Deseja reiniciar o jogo?")
escreval("1-Sim")
escreval("2-Não")
leia(opcaoReinicio)
escolha opcaoReinicio
    caso 1
         opcaoReinicio<-0
         iniciaJogoNovo
    caso 2
         limpatela
         escreval("Até mais!")
         fimalgoritmo
    outrocaso
         fimalgoritmo
fimescolha

fimprocedimento


inicio
// Seção de Comandos
iniciaJogoNovo

fimalgoritmo
