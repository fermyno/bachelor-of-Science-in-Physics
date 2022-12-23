! Enunciado: crie um programa para calcular o fatorial de um numero natural.

program ativ01

   implicit none
   integer :: numero, fat, j

   ! inicio do programa
   print *, "PROGRAMA PARA CALCULAR O FATORIAL DE UM NUMERO"
   ! le o numero digitado
   print *, "Informe o numero: "
   read *, numero
   ! testa se numero é negativo
   if (numero < 0) then
      print *, "Nao foi possivel calcular o fatorial (escolha um numero inteiro positivo)."
   else if (numero == 0) then
      ! escreve resultado na tela
      write (*, 100) numero
      100 format("Fatorial de",t12,i3," = 1")
   else
      fat=1
      ! loop para calcular o fatorial
      do j=1, numero
         fat=fat*j
      end do
      ! escreve resultado na tela
      write (*, 200) numero, fat
      200 format("Fatorial de",t12,i3," = ",i7)
   end if

end program ativ01
