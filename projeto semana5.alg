algoritmo "Semana 5"
// Função : Conversor de temperatura
// Autor :  Vitor Ribeiro Araújo
// Data : 18/11/2022
var

temperatura: vetor[1..4] de inteiro
vetorFahrenheit, vetorCelsius: vetor[1..4] de real
h,j, contador: inteiro
contadorF : inteiro
opcaomenu : inteiro
aux : real

procedimento ftc ()

inicio

para contador de 1 ate 4 faca
   escreval (" informe a ", contador, " temperatura em fahrenheit")
   leia (vetorFahrenheit[contador])
   vetorCelsius [contador]<- (vetorFahrenheit[contador] - 32) / 1.8
   escreval (" informe a" ,contador, "° hora")
   leia (temperatura[contador])

   para h de 1 ate 4 faca
      para j de 1 ate 4 faca
         se (vetorFahrenheit [j] > vetorFahrenheit [h]) e (vetorFahrenheit[h] <> 0) entao
            aux <- vetorFahrenheit [j]
            vetorFahrenheit [j]<- vetorFahrenheit [h]
            vetorFahrenheit [h]<- aux
         fimse
      fimpara
   fimpara

fimpara

para contador de 1 ate 4 faca
   escreval ("a temperatura em Fahrenheit é ", vetorFahrenheit[contador], " que foi registrada as",temperatura[contador], ":00 corresponde a", vetorCelsius[contador], " graus celsius")
fimpara
fimprocedimento

procedimento ctf ()

inicio

para contador de 1 ate 4 faca
   escreval (" informe a ", contador, " temperatura em celsius")
   leia (vetorCelsius[contador])
   vetorFahrenheit [contador]<- (vetorCelsius[contador] * 1.8) + 32
   escreval (" informe a" ,contador, "° hora")
   leia (temperatura[contador])

   para h de 1 ate 4 faca
      para j de 1 ate 4 faca
         se (vetorCelsius [j] > vetorCelsius [h]) e (vetorFahrenheit[h] <> 0) entao
            aux <- vetorCelsius [j]
            vetorCelsius [j]<- vetorCelsius [h]
            vetorCelsius [h]<- aux
         fimse
      fimpara
   fimpara

fimpara

para contador de 1 ate 4 faca
   escreval ("a temperatura em Celcius é ", vetorCelsius[contador], " que foi registrada as",temperatura[contador], ":00 corresponde a", vetorFahrenheit[contador], " graus Fahrenheit")
fimpara


fimprocedimento
inicio
repita
   escreval ("")
   escreval (" Converter de : ")
   escreval (" 1 - Fahrenheit para Celsius ")
   escreval (" 2 - Celsius para Fahrenheit ")
   escreval (" 3 - sair")
   leia (opcaomenu)
   escolha opcaomenu
   caso 1
      ftc ()
   caso 2
      ctf ()


   fimescolha
ate opcaomenu = 3
fimalgoritmo
