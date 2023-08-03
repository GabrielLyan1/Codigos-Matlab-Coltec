% Gabriel Lyan Barbosa de Assis   
% 205 - A
% 01/07/2021
% Questao 2 - primeira avaliacao   

clc 
clear all 
close all 

x = 1:0.1:10;

printf('\n\nDefinição das constantes K, a e b -> \n\n');

K = input('Entre com o valor da constante K: ');
printf('\n');
a = input('Entre com o valor da constante a: ');
printf('\n');
b = input('Entre com o valor da constante b: ');

reta1 = (K+zeros(size(x)));
reta2 = a.*x + b;

figure(1)
plot(x,reta1,'-b');
hold on 
plot(x,reta2,'-r');

title('Intersecao de duas retas');
xlabel('X');
ylabel('Y');

VarAux = (K-b)/a;

hold on 
plot(VarAux,K,'*k');
%plot (3,-4, '*k', 'markersize', 15)


clear all 
clc




