% Gabriel Lyan Barbosa de Assis   
% 205 - A
% 01/07/2021
% Questao 4 - primeira avaliacao   

clc
clear all 
close all 

n = input('Digite o valor de n: ');
Qn = n^2;  %quadrado de n

soma = 0;
pares = 0;
impares = 0;

m = randi([1,Qn],n,n)

for(i=1:n)
   for(j=1:n)
      soma += m(i,j);
   endfor
endfor

printf("\nSoma: %i\n\n", soma);

for(i=1:n)
   for(j=1:n)
      if (mod(m(i,j),2) == 1)
      impares += 1;
    else 
      pares += 1;
      endif 
   endfor
endfor

printf('Numeros pares da matriz : %i', pares);
printf('\n\nNumeros impares da matriz : %i\n\n', impares);


clear all 
