% Gabriel Lyan Barbosa de Assis  
% 205 - A
% Primeira avaliacao  |  Script principal 
% 01/07/2021
%


Avaliacao1 = 1; 

while(Avaliacao1 ~= 5 && Avaliacao1 < 5 && Avaliacao1 > 0)

Avaliacao1 = menu('Escolha uma Op��o: ','Quest�o 1','Quest�o 2','Quest�o 3','Quest�o 4', 'Sair');

close all

      switch Avaliacao1
      
      case 1 
        disp('questao 1 selecionada!');
        Questao01
        Avaliacao1 = 1;
      case 2
        disp('questao 2 selecionada!');
        Questao02
        Avaliacao1 = 1;
      case 3 
       disp('questao 3 selecionada!');
        Questao03
        Avaliacao1 = 1;
      case 4  
        disp('questao 4 selecionada!');
        Questao04
        Avaliacao1 = 1;
       case 5  
        disp('Voce saiu do programa!');
      otherwise 
        disp('Op��o n�o existente');
        
    endswitch
    
endwhile
clear all
