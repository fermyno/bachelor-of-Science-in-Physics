! Enunciado: Escreva um programa que realize a conversão de base numérica.
! O programa deve converter da base decimal para o formato binário.

program ativ04

implicit none

! declaracao de variaveis
integer, parameter :: base=2
integer :: i, j, qnum, rnum, numero, numero_abs
real , parameter :: log2=0.69314718055994530942
integer, DIMENSION(:), ALLOCATABLE :: b

! inicio do programa
print *, "PROGRAMA PARA CONVERSAO DE BASE NUMERICA."
print *, "CONVERTE DA BASE 10 PARA A FORMA BINARIA."

! le numero na base 10
write (*, fmt="(a)",advance="no") "Informe um numero na base 10: "
read*, numero

! adiciona -1 no final do vetor em caso de numero negativo
select case (numero)
case (0)
allocate (b(1))
   b=0
case (:-1)
   ! numero negativo
   numero_abs=abs(numero)
   j=log(real(numero_abs))/log2
   allocate(b(0:j + 1))
   qnum=numero_abs
   do i=0, j
      rnum=mod(qnum,base)
	   qnum=qnum/base
	   b(j - i + 1)=rnum
   end do
   b(0)=1
case (1:)
   j=log(real(numero))/log2
   allocate (b(0:j))
   qnum=numero
   do i=0,j
      rnum = mod(qnum,base)
	   qnum = qnum/base
	   b(j - i)=rnum
   end do
end select
j=size(b)

! escreve resultado final
write(*, fmt="('A forma binaria e : ')",advance="no")
do i=1, j - 1
   write(*,fmt="(i1)", advance="no")b(i - 1)
end do
write (*, fmt="(i1)")b(j - 1)

end program ativ04
