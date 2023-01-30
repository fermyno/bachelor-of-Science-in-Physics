// Enunciado:
// Escreva um algoritmo que converta o valor de horas, minutos, e segundos em segundos.

algoritmo "ConverteHorasParaSegundos"

// declaracao de variaveis
Var
   horas, minutos, segundos, segundosCalc : inteiro

Inicio

   // coleta os dados digitados pelo usuario
   escreva("Digite o valor das horas:")
   leia(horas)
   escreva("Digite o valor dos minutos:")
   leia(minutos)
   escreva("Digite o valor dos segundos:")
   leia(segundos)

   // realiza o calculo
   segundosCalc <- (horas x 3600) + (minutos x 60) + segundos

   // informa resultado final
   escreva("Soma em segundos = ", segundosCalc)

Fimalgoritmo
