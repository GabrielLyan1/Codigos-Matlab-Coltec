% Gabriel Lyan Barbosa de Assis   
% 205 - A
% 01/07/2021
% Questao 3 - primeira avaliacao   

clear all
clc
opcao = 66;

while(opcao ~= 4)

       Menu_questao_3

       opcao = input("\n\nDigite a opcao desejada: ");

       switch opcao 
         
       case 1 
         printf('\nVoce selecionou a questao 1 - triangulo de numeros \n');
         questao03_atividade1
         opcao = 1;
       case 2 
         printf('Voce selecionou a questao 2 - Somat�rio\n');
         questao03_atividade2
         opcao = 1;
       case 3 
         printf('Voce selecionou a questao 3 - Polin�mio\n');
         questao03_atividade3
         opcao = 1;
       case 4 
         printf('Voce saiu\n\n');
       otherwise 
         printf('Digite uma op��o valida\n\n');
     endswitch
     
 printf("\n");
endwhile


clear all 
clc