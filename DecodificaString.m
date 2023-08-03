% Grupo 7 (Fernando Alves, Gabriel Lyan e Pedro Guilherme)
% Data: 08/07/2021
% Turma: 205
% Função que decodifica a string 

aux2 = 1;

Matriz_para_decodificar = inv(Matriz_codificadora);

for(i = 1:subdiv_string)

  celula_string_decodificada{i} = round(Matriz_para_decodificar*celula_string_codificada{i});

endfor

%decodifica a celula na frase original

for(i=1:subdiv_string)
  
      vetor_indices = celula_string_decodificada{i};
      
        for(j=1:4)  
        
          vetor_letras(j,1) = alfabeto(vetor_indices(j,1));
        
        endfor
      
      celula_final{i} = vetor_letras;
    
endfor

string_final = char(celula_final)';
printf("\nPalavra decodificada: ");
disp(string_final);
