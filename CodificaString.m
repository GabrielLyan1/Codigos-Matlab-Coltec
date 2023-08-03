% Grupo 7 (Fernando Alves, Gabriel Lyan e Pedro Guilherme)
% TURMA: 205-A         
% Tarefa 1 - Criptografia
% Codifica string

alfabeto = 'abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789';
aux2 = 1;
%obtem o tamanho da string
tamanho_da_string = length(string);


% Cria a matriz codificadora
Matriz_codificadora = [1, 1, 1, 1; 1, 2, 1, 4; 1, 1, 1, 2; 1, 2, 0, 3];
Matriz_codificadora = Matriz_codificadora';

% Codifica a string
for i = 1:tamanho_da_string
  
    numero_correspondente_no_alfabeto = find(alfabeto == string(i));
    aux(i,1) = numero_correspondente_no_alfabeto;

endfor

if(mod(tamanho_da_string,4) ~= 0)

  for(i=tamanho_da_string+1:(tamanho_da_string+(4-mod(tamanho_da_string,4))))
  
    aux(i,1) = 27;  % 27 = espaço no "alfabeto"
  
  endfor

endif




string = aux;
%Reobtem o tamanho da string 
tamanho_da_string = round(length(string));
%obtem subdivisões da string
subdiv_string = round(tamanho_da_string/4);

for(i=1:subdiv_string)

    for(j=1:4)
    
      vetor_substring(j,1) = string(aux2,1);
      aux2++;
      
    endfor

  celula_string{i} = vetor_substring;

endfor

for(i = 1:subdiv_string)

  celula_string_codificada{i} = Matriz_codificadora*celula_string{i};

endfor

%Mostra a frase lida codificada
printf("\n\nFrase lida codificada: \n");
disp(celula_string_codificada);


