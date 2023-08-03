% Gabriel Lyan Barbosa de Assis   
% 205 - A
% 01/07/2021
% Questao 3 - Atividade 2 - primeira avaliacao   


n = input("\n\nDigite um numero: ");
vetorContagem = (-n:100);
somatorio = 0;

for(i=-n:100)
    aux = (i+1);
    if(aux == 0)
    somatorio = somatorio + 0;
    i++;
    endif
  
    somatorio = somatorio + (i-1)/(i+1);
    
endfor

printf("\n\nSomatorio: %i\n", somatorio);