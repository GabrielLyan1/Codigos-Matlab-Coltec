% Grupo 7 (Fernando Alves, Gabriel Lyan e Pedro Guilherme)
% TURMA: 205-A         
% Tarefa 1 - Criptografia
% ler a string

clear all
clc

espacos = 0;
while(espacos < 5)

string = input('Digite uma string de no minimo 6 palavras: ', 'c');

    for(i=1:length(string))
    
    if(string(i) == ' ')
    
    espacos++;
    
    endif

    endfor

    
    if(espacos < 5)
    printf("\nVoce digitou menos de 6 palavras!\n\n");
    endif
  
    
endwhile
