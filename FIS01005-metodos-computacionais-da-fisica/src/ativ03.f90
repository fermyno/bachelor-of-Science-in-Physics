! Enunciado: Escreva um programa que calcule o maior fator comum de dois
! números inteiros A e B. Para isso, utilize o Algoritmo de Euclides.
!
PROGRAM ativ03

! inicio do programa
print *, "PROGRAMA PARA CALCULAR O MAIOR FATOR COMUM DE DOIS NUMEROS"
print *, "UTILIZANDO O ALGORITMO DE EUCLIDES."

! le os numeros digitados
WRITE(UNIT=*, FMT=*) "Informe o PRIMEIRO numero inteiro:"
READ(UNIT=*, FMT=*) A
WRITE(UNIT=*, FMT=*) "Informe o SEGUNDO numero inteiro:"
READ(UNIT=*, FMT=*) B

! testa qual numero maior
10 IF(A .NE. B) THEN

    IF(A .GT. B) THEN
      A = A - B
    ELSE
      B = B - A
    END IF

    ! pequeno loop usando GO TO
    GO TO 10

END IF

! escreve resultado na tela
WRITE(UNIT=*, FMT=*) "Maior fator comum = ", A

END PROGRAM ativ03
