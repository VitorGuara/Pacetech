algoritmo "Projeto semana 4"
// Função : Conversor de Temperatura e Moeda PACETECH
// Criado por : Vitor Ribeiro Araújo
// Data : 11/11/2022

var
temperaturaCelsius, temperaturaFahrenheit, valorReal, valorDolar, resultado: real
menu: literal

inicio
    repita
      Escreval("- Conversor de temperatura e moeda  PACETECH -")
      Escreval("Escolha uma das opções:")
      Escreval("1 - Converter Celsius para Fahrenheit")
      Escreval("2 - Converter Fahrenheit para Celsius")
      Escreval("3 - Coverter Reais para Dólares")
      Escreval("4 - Coverter Dólares para Reais")
      Escreval("5 - Sair")
      Escreval("")
      leia(menu)

   Escolha menu
   caso "1"
      Escreval("Insira a temperatura em Celsius °C: ")
      leia(temperaturaCelsius)
      temperaturaFahrenheit <- (temperaturaCelsius * 1.8) + 32
      Escreval("A temperatura em Fahrenheit é: ", temperaturaFahrenheit:1:2, " ° F")
      Escreval("")

   caso "2"
      Escreval("Insira a temperatura em Fahrenheit °F: ")
      leia(temperaturaFahrenheit)
      temperaturaCelsius <- (temperaturaFahrenheit - 32) / 1.8
      Escreval("A temperatura em Celsius é: ", temperaturaCelsius:1:2, " ° C")
      Escreval("")

   caso "3"
      Escreval("Insira o valor em Reais R$: ")
      leia(valorReal)
      Escreval("Insira a cotação do dólar U$: ")
      leia(ValorDolar)
      resultado <- valorReal / valorDolar
      Escreval("O valor em dólares é: U$",resultado)
      Escreval("")

      
   caso "4"
      Escreval("Insira o valor em Dólares U$: ")
      leia(valorDolar)
      Escreval("Insira a cotação do dólar: ")
      leia(ValorReal)
      resultado <- valorDolar * valorReal
      Escreval("O valor em Reais é: R$",resultado)
      Escreval("")

      
      
   fimescolha
      ate (menu = "5")
      Escreval("")
      Escreval("Tenha uma ótima estadia nos EUA!")

fimalgoritmo
