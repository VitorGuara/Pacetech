
package teste;

import java.util.Scanner;
import java.text.DecimalFormat;


public class Main { 

    
    public static void main(String[] args) {
        
    Scanner leia = new Scanner(System.in);
        DecimalFormat df = new DecimalFormat("0.00");
        int opcaoTemperatura = 0, opcaoMoeda = 0, opcaoMenu = 0;
        float tempCelsius, tempFahrenheit, cotacaoDolar, moedaReais, moedaDolares;

        System.out.println("- Conversor de temperatura e moeda PACETECH -");
        
        System.out.print("\n");

        do {
            System.out.println("Escolha uma das opções: ");
           
            System.out.println("1 - Converter Temperatura");
            System.out.println("2 - Converter Moeda");
            System.out.println("3 - Sair do Programa");
            opcaoMenu = leia.nextInt();
            System.out.print("\n");
            switch (opcaoMenu) {

                case 1: {
                    System.out.println("Qual conversão você deseja realizar?");
                    System.out.println("1 - Converter Celsius para Fahrenheit");
                    System.out.println("2 - Converter Fahrenheit para Celsius");
                    System.out.println("3 - Voltar ao Menu Inicial");
                    opcaoTemperatura = leia.nextInt();
                    System.out.print("\n");
                    switch (opcaoTemperatura) {
                        case 1:
                            System.out.println("Digite a temperatura em Celsius"
                                    + " a ser convertida:");
                            tempCelsius = leia.nextFloat();
                            tempFahrenheit = tempCelsius * 1.8f + 32;
                            System.out.println(df.format(tempCelsius) + "°C "
                                    + "convertida para Fahrenheit é "
                                    + df.format(tempFahrenheit) + "°F");
                            System.out.print("\n");
                            break;

                        case 2:
                            System.out.println("Digite a temperatura em "
                                    + "Fahrenheit a ser convertida");
                            tempFahrenheit = leia.nextFloat();
                            tempCelsius = (tempFahrenheit - 32) / 1.8f;
                            System.out.println(df.format(tempFahrenheit) + "°F "
                                    + "convertida para Fahrenheit é "
                                    + df.format(tempCelsius) + "°C");
                            System.out.print("\n");
                            break;

                        case 3:
                            opcaoTemperatura = opcaoMenu;
                            System.out.print("\n");
                            break;

                    }

                }
                break;

                case 2: {
                    System.out.println("Qual conversão você deseja realizar?");
                    System.out.println("1 - Converter Reais para Dólar");
                    System.out.println("2 - Converter Dólar para Reais");
                    System.out.println("3 - Voltar ao Menu Inicial");
                    opcaoMoeda = leia.nextInt();
                    System.out.print("\n");
                    switch (opcaoMoeda) {
                        case 1:
                            System.out.println("Qual a cotação atual do "
                                    + "Dólar?");
                            cotacaoDolar = leia.nextFloat();
                            System.out.println("Qual o valor em reais que você "
                                    + "deseja converter?");
                            moedaReais = leia.nextFloat();
                            moedaDolares = moedaReais / cotacaoDolar;
                            System.out.println("R$" + df.format(moedaReais) + " "
                                    + "convertido na cotação de US$" + 
                                    df.format(cotacaoDolar) + " passa a valer "
                                            + "US$" + df.format(moedaDolares));
                            System.out.print("\n");
                            break;

                        case 2:
                            System.out.println("Qual a cotação atual do "
                                    + "Dólar?");
                            cotacaoDolar = leia.nextFloat();
                            System.out.println("Qual o valor em Dólar que "
                                    + "você deseja converter?");
                            moedaDolares = leia.nextFloat();
                            moedaReais = moedaDolares * cotacaoDolar;
                            System.out.println("US$" + df.format(moedaDolares) + 
                                    " convertido na cotação de US$" 
                                    + df.format(cotacaoDolar) + 
                                    " passa a valer R$" + df.format(moedaReais));
                            System.out.print("\n");
                            break;

                        case 3:
                            opcaoTemperatura = opcaoMenu;
                            System.out.print("\n");
                            break;

                    }
                    break;
                }
                case 3: {
                    System.exit(0);
                    break;
                }
            }

        } while (opcaoMenu != 3);
    }
}
    
    

