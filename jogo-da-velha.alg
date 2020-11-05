algoritmo "Jogo da Velha - Curso Udemy - VisuALG (Portugol) - Lógica de Programação do ZERO"
// Função :
// Autor :
// Data : 03/11/2020
// Seção de Declarações 
var
tabuleiro:vetor[1..3,1..3] de caractere
nomeJogador1,nomeJogador2:caractere
linha,coluna,linhaJogada,colunaJogada,contador,rodada,vez,opcaoReinicio:inteiro
pontosJogador1,pontosJogador2:inteiro

//Inicia o Jogo
procedimento iniciaJogo
inicio
rodada<-1
pontosJogador1<-0
pontosJogador2<-0
vez<-1
escreval("Bem vindo ao jogo!")
escreval("Digite o nome do jogador 1:")
leia(nomeJogador1)
escreval("Digite o nome do jogador 2:")
leia(nomeJogador2)
vez<-1
fimprocedimento

//Mostra o jogo
procedimento mostraJogo
inicio
limpatela
escreval("Nº da jogada:",rodada)
escreval("----------")
mostraTabuleiro
escreval("----------")
escreval("Pontuação:", nomeJogador1,"=",pontosJogador1,",",nomeJogador2,"=",pontosJogador2)
fimprocedimento

//Mostra o tabuleiro
procedimento mostraTabuleiro
inicio
para linha de 1 ate 3 faca
     para coluna de 1 ate 3 faca
          escreva(" ",tabuleiro[linha,coluna]," ")
     fimpara
     escreval
fimpara
fimprocedimento

//Inicia o tabuleiro
procedimento iniciaTabuleiro
inicio
para linha de 1 ate 3 faca
     para coluna de 1 ate 3 faca
          tabuleiro[linha,coluna]<-"#"
     fimpara
fimpara
fimprocedimento

//Posiciona a Jogada
procedimento posicionaJogada(linhaJogada,colunaJogada:inteiro)
inicio
se(vez = 1)entao
     tabuleiro[linhaJogada,colunaJogada]<-"X"
     vez<-2
senao
     tabuleiro[linhaJogada,colunaJogada]<-"O"
     vez<-1
fimse
rodada<-rodada+1
fimprocedimento

//Verifica jogo
funcao verificaJogo:logico
inicio
se(rodada>8)entao
     encerraJogo(3)
     retorne falso
senao
     se(tabuleiro[1,1]= "X") e (tabuleiro[1,2]= "X") e (tabuleiro[1,3]= "X")entao
         encerraJogo(1)
     fimse

     se (tabuleiro[1,1] = "X") e  (tabuleiro[1,2] = "X") e (tabuleiro[1,3] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[1,1] = "X") e  (tabuleiro[2,1] = "X") e (tabuleiro[3,1] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[1,3] = "X") e  (tabuleiro[2,3] = "X") e (tabuleiro[3,3] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[3,1] = "X") e  (tabuleiro[3,2] = "X") e (tabuleiro[3,3] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[1,3] = "X") e  (tabuleiro[2,2] = "X") e (tabuleiro[3,1] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[1,1] = "X") e  (tabuleiro[2,2] = "X") e (tabuleiro[3,3] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[2,1] = "X") e  (tabuleiro[2,2] = "X") e (tabuleiro[2,3] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[1,2] = "X") e  (tabuleiro[2,2] = "X") e (tabuleiro[3,2] = "X") entao
         encerraJogo(1)
      fimse

      se (tabuleiro[1,1] = "O") e  (tabuleiro[1,2] = "O") e (tabuleiro[1,3] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[1,1] = "O") e  (tabuleiro[2,1] = "O") e (tabuleiro[3,1] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[1,3] = "O") e  (tabuleiro[2,3] = "O") e (tabuleiro[3,3] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[3,1] = "O") e  (tabuleiro[3,2] = "O") e (tabuleiro[3,3] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[1,3] = "O") e  (tabuleiro[2,2] = "O") e (tabuleiro[3,1] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[1,1] = "O") e  (tabuleiro[2,2] = "O") e (tabuleiro[3,3] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[2,1] = "O") e  (tabuleiro[2,2] = "O") e (tabuleiro[2,3] = "O") entao
         encerraJogo(2)
      fimse

      se (tabuleiro[1,2] = "O") e  (tabuleiro[2,2] = "O") e (tabuleiro[3,2] = "O") entao
          encerraJogo(2)
      fimse

      retorne  verdadeiro
fimse
fimfuncao

//Encerra o jogo
procedimento encerraJogo(jogadorVencedor:inteiro)
inicio
escreval("Fim de jogo!")
escreval("Nº de rodadas:",rodada)
escolha jogadorVencedor
     caso 1
          escreval(nomeJogador1," venceu!")
          pontosJogador1<-pontosJogador1+1
     caso 2
          escreval(nomeJogador2," venceu!")
          pontosJogador2<-pontosJogador2+1
     caso 3
          escreval("Foi um empate!")
fimescolha
menuReinicio
fimprocedimento

//Reinicia o jogo
procedimento menuReinicio
inicio
escreval("O quê desejas fazer?")
escreval("1-Continuar jogando")
escreval("2-reiniciaJogo")
escreval("3-Sair")
leia(opcaoReinicio)
escolha opcaoReinicio
     caso 1
         limpatela
         rodada<-1
         vez<-1
         iniciaTabuleiro
         mostraJogo
         funcionaJogo
     caso 2
         limpatela
         iniciaJogo
         iniciaTabuleiro
         mostraJogo
         funcionaJogo
     caso 3
         escreval("Até mais!")
fimescolha

fimprocedimento

//Enquanto existe jogo
procedimento funcionaJogo
inicio
enquanto (verificaJogo = verdadeiro)faca
     se(vez = 1)entao
          escreval("Vez do :",nomeJogador1)
     senao
          escreval("Vez do :",nomeJogador2)
     fimse
     escreval("Digite uma linha:")
     leia(linhaJogada)
     escreval("Digite uma coluna:")
     leia(colunaJogada)
     posicionaJogada(linhaJogada,colunaJogada)
     mostraJogo
fimenquanto
fimprocedimento

inicio
// Seção de Comandos
iniciaJogo
iniciaTabuleiro
mostraJogo
funcionaJogo
fimalgoritmo
