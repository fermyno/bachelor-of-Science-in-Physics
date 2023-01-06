! Enunciado: Criar um programa que abra o arquivo ativ05.dat 
! (o arquivo será fornecido pelo professor) e mostre os dados
! na tela com a seguinte formatacao sugerida:
!
!                         Altura
!   Nome         Idade   (metros)  Telefone
!   ----         -----    ------   --------
!P. A. Cabral      31      1.60    96556789
!C. Colombo        42      1.65    21025499

PROGRAM ativ05
implicit none
! declaracao de variaveis
character(len=15) :: nome
integer :: idade, telefone, stat
real :: altura
! abre arquivo com os dados a serem lidos
open(unit=8, file="ativ05.dat")
! escreve cabecalho na tela
write (*, 100)
100 format (t24," Altura ")
write (*, 200)
200 format(t4,"Nome ",t17, "Idade ",t23," (metros)  ",t34,"Telefone")
write (*, 300)
300 format (t4,"----",t17,"-----",t23,"  ------ ",t34,"--------")
! le todas as linhas do arquivo
do
   read (8, fmt="(a15,1x,i3,1x,f4.2,1x,i8)", iostat=stat) nome, &
        idade, altura, telefone
   if (stat < 0) exit   ! testa se é fim de arquivo
   write (*, 400) nome, idade, altura, telefone
   400 format(a,t18,i3,t26,f4.2,t34, i8)
end do

end program ativ05
