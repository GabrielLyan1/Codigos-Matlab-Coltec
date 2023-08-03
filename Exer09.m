% Nome: Gabriel Lyan Barbosa de Assis 

#Exercicio 9

clear all
clc

a = 2;
b = 5;

delta = pi/40;
x = 0:delta:pi/2;

y1 = b*exp(-a*x).*sin(b*x);
p = [0.012 -0.15 0.075 2.5 0];

px = polyval(p,x);

y = y1.*px;

z = y.^2;

w = [x', y', z'];

format short g

disp(w);

figure(1);

subplot(211); # cria uma figura com 2 espaços para graficos
plot(y,x); # plota o primeiro grafico no subplot 1
hold on # SEGURA

xlabel('Eixo x - Abscissa'); #inclui label para o eixo x
ylabel('Eixo y - ordenada'); #inclui label para o eixo y

title("Grafico Y/X "); #inclui titulo ao primeiro grafico
subplot(212); # informa que o proximo grafico sera plotado na posição 2 
plot(z,x); # plota o segundo grafico
title("Grafico Z/X"); # inclui titulo ao segundo grafico

figure(2);
plot(y,x,'dr', 'markersize', 12);
hold on 
plot(y,x,':r', 'linewidth', 1.5);
hold on
plot(z,x,'sb', 'markersize', 12);
hold on 
plot(z,x,'-b', 'linewidth', 1.5);









