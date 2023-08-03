% Gabriel Lyan Barbosa de Assis   
% 205 - A
% 01/07/2021
% Questao 3 - Atividade 3 - primeira avaliacao  

a0 = input('Digite o valor de a0 do polinomio: ');
a1 = input('Digite o valor de a1 do polinomio: ');
a2 = input('Digite o valor de a2 do polinomio: ');
a3 = input('Digite o valor de a3 do polinomio: ');

p = [a3 a2 a1 a0];

raizes = roots(p);

disp(raizes);

printf("\nDefinição vetor x -> \n\n");

x0 = input('Digite o valor de x0 (x inicial do vetor): ');
xf = input('Digite o valor de xf (x final do vetor): ');
nx = input('Digite o valor de nx (numero de casas do vetor x0: ');

x = linspace(x0, xf, nx);

px = polyval(p,x);

figure(1)
plot(x,px);
title('Grafico X  x  P(x)');
xlabel('X');
ylabel('Y');


