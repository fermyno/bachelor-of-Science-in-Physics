! Enunciado: Criar um programa que leia a entrada, via teclado, dos
! três lados de um triângulo e calcule a sua área. 
! Atenção: O programa deve fazer uso de pelo menos uma função.

PROGRAM ativ02

IMPLICIT NONE
! declaracao de variaveis
REAL :: ladoA, ladoB, ladoC, areaTriangulo

! inicio do programa
print *, "PROGRAMA PARA CALCULAR A AREA DE UM TRIANGULO"

! le os numeros digitados
PRINT *, 'Informe o tamanho do Lado A:'
READ *, ladoA
PRINT *, 'Informe o tamanho do Lado B:'
READ *, ladoB
PRINT *, 'Informe o tamanho do Lado C:'
READ *, ladoC

! calcula e escreve na tela a area do triangulo
PRINT *, 'Area do Triangulo: ', areaTriangulo(ladoA,ladoB,ladoC)

END PROGRAM ativ02


! funcao que realiza o calculo da area do triangulo
FUNCTION areaTriangulo(a,b,c)

IMPLICIT NONE

! declaracao de variaveis locais
REAL :: areaTriangulo
REAL, INTENT( IN ) :: a, b, c
REAL :: anguloTeta, altura

! calcula o angulo teta
anguloTeta = ACOS((a**2+b**2-c**2)/(2.0*a*b))
! calcula a altura
altura = a*SIN(anguloTeta);
! calcula a area do triangulo 
areaTriangulo = 0.5*b*altura

END FUNCTION areaTriangulo
