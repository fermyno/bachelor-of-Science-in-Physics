! Enunciado: Faça um programa que grave informações formatadas 
! no arquivo ativ03.dat. Se o arquivo não existe, o programa
! deve criá-lo; se existe, então os dados previamente contidos
! nele deverão ser substituídos por novos valores.


program ativ03

use , intrinsic :: iso_fortran_env , only : dp => real64
implicit none
real(dp) :: a , b, c
    
print *, "PROGRAMA QUE ESCREVE DADOS NO ARQUIVO <ativ03.dat>"
    
a= sqrt (1.0_dp)
b= sqrt (2.0_dp)
c= 3.141592654
    
open(10 , file="ativ03.dat")
write(10 , fmt="(f6.2,1x,f9.7,1x,f11.9)") a , b, c
close(10)
  
print *, "PROGRAMA FINALIZADO"
    
end program ativ03
