! Enunciado: Escreva um programa que colete os seguintes dados dos alunos:
! Nome, Nota 1, Nota 2 e Nota 3. Em seguida, escreva na tela o nome do
! aluno e a média das suas notas (as notas têm o mesmo peso). 
! É obrigatória a utilização de type para definir os dados dos alunos.

program ativ04

   implicit none

   ! define o tipo com a estrutura de dados dos alunos 
   type :: aluno
      character (len=20) :: nome
      integer :: codigo
      real :: n1 , n2 , n3 ,mf
   end type aluno

   type (aluno) :: discente

   ! inicio da execucao
   print *, "Programa que coleta os dados do aluno e calcula a media final"
   print *, ""
   print *, "Nome do aluno : "
   read "(a)", discente%nome
   print *, "Numero de matricula : "
   read*, discente%codigo
   print *, "Nota Prova #1 : "
   read* , discente%n1
   print *, "Nota Prova #2 : "
   read* , discente%n2
   print *, "Nota Prova #3 : "
   read* , discente%n3
   discente%mf=(discente%n1 + discente%n2 + discente%n3)/3.0
   print * , " "
   print * , "RESULTADO DAS NOTAS"
   print * , "==================="
   print *,"Aluno: ", discente%nome
   print *,"Matricula: ", discente%codigo
   print *,"Nota Final: ", discente%mf

end program ativ04
