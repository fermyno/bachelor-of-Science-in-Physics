// Enunciado:
// Escreva um algoritmo que calcule o pagamento anual dos juros de um empréstico bancário. 
// O usuário deve infomar o montante do empréstimo, a taxa de juros, e o número de anos. 
// O programa deve calcular e informar o valor de pagamento anual com os dados inseridos.

algoritmo "CalculaJurosBancarios"

// declaracao de variaveis
Var
   montante, taxaDeJuros, QuantidadeAnos, pagamentoAnual, taxaCalculada : inteiro

Inicio

   // coleta os dados digitados pelo usuario
   escreva("Informe o valor do montante que foi adquirido com o banco:")
   leia(montante)
   escreva("Informe o valor da Taxa de Juros do Empréstimo:")
   leia(taxaDeJuros)
   escreva("Informe a duração do financiamento (em anos):")
   leia(QuantidadeAnos)

   // realiza o calculo
   taxaCalculada  <- taxaDeJuros / 100
   pagamentoAnual <- taxaCalculada * montante / (1 - (1 + taxaCalculada) ** (- QuantidadeAnos))

   // informa resultado final
   escreva("Pagamento anual = ", pagamentoAnual)

Fimalgoritmo