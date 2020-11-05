algoritmo "Jogo RPG - Curso Udemy - VisuALG (Portugol) - Lógica de Programação do ZERO"
// Função :
// Autor :
// Data : 05/11/2020
// Seção de Declarações 
var
opcoesEscolhidas:vetor[0..2] de inteiro
inventario:vetor[0..2] de caractere
rodada,vida:inteiro

//Mostra opções ao usuário
procedimento mostraOpcoes(opcao1,opcao2,opcao3:caractere)
inicio
se(opcao1 <> "")entao
     escreval("1-",opcao1)
fimse
se(opcao2 <> "")entao
     escreval("2-",opcao2)
fimse
se(opcao3 <> "")entao
     escreval("3-",opcao3)
fimse
fimprocedimento

//Exibe Status
procedimento exibeStatus
inicio
limpatela
escreval("Vida:",vida)
escreval("Invemtário:",inventario[0],"|",inventario[1],"|",inventario[2])
fimprocedimento

inicio
//Arma Principal
inventario[0]<-" _ "
//Capacete
inventario[1]<-" _ "
//Poção
inventario[2]<-" _ "
vida<-100


// Seção de Comandos 
//Capítulo 0
exibeStatus
escreval("Você está em um quarto e existem armas na sua frente, o que deseja fazer?")
mostraOpcoes("Pegar Espada","Pegar Machado","Pegar Luvas")
leia(opcoesEscolhidas[rodada])
escolha opcoesEscolhidas[rodada]
     caso 1
          inventario[0]<-"Espada"
     caso 2
          inventario[0]<-"Machado"
     caso 3
          inventario[0]<-"Luvas"
fimescolha
rodada<-rodada+1

//Capítulo 1
exibeStatus
escreval("Você foi atacado por um monstro. O que deseja fazer?")
se(opcoesEscolhidas[0] = 3)entao
     escreval("Você não tem armas, você morreu!")
     fimalgoritmo
senao
     mostraOpcoes("Atacar","Fugir","Se esconder")
     leia(opcoesEscolhidas[rodada])
fimse
rodada<-rodada+1

fimalgoritmo
