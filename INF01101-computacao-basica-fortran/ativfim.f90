! ATIVIDADE FINAL
! Enunciado: Criar um programa que abra o arquivo ativfim.dat 
! (o arquivo será fornecido pelo professor) e mostre os dados na tela
! com a seguinte formatacao sugerida:
!
! +-------------------------------------------------------------------+
! |                         CONTROLE DE ESTOQUE                       |
! | LABORATORIO DE FISICA - UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL |
! +-------------------------------------------------------------------+
! |     CODIGO        | QUANTIDADE | VALOR (x1.000) |      SETOR      |
! +-------------------------------------------------------------------+
! | M47BCL1008122A1   |     31     |      1.90      |       118       |
! | JKT12544SHT1009   |    114     |     10.10      |        57       |
! +-------------------------------------------------------------------+
!

PROGRAM ativfim
implicit none
! declaracao de variaveis
character(len=15) :: codigo
integer :: quantidade, setor, stat, total
real :: valor
! zera contador de registros
total = 0
! abre arquivo com os dados a serem lidos
open(unit=8, file="ativfim.dat")
! escreve cabecalho na tela
print *, ""
print *, "+-------------------------------------------------------------------+"
print *, "|                         CONTROLE DE ESTOQUE                       |"
print *, "| LABORATORIO DE FISICA - UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL |"
print *, "+-------------------------------------------------------------------+"
print *, "|     CODIGO        | QUANTIDADE | VALOR (x1.000) |      SETOR      |"
print *, "+-------------------------------------------------------------------+"
! le todas as linhas do arquivo
do
   read (8, fmt="(a15,1x,i3,1x,f4.2,1x,i4)", iostat=stat) codigo, quantidade, valor, setor
   if (stat < 0) exit   ! testa se é fim de arquivo
   print '(" |",a18,1x,"|    ",i3,"     |  ",f8.2,"      |  ",i8, "       | ")',codigo, quantidade, valor, setor
   total = total + 1
end do
print *, "+-------------------------------------------------------------------+"
! escreve total de registros encontrados
write (*, 100) total
100 format("     REGISTROS ENCONTRADOS:",t28,i3)
print *, ""

end program ativfim
