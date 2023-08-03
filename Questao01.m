% Gabriel Lyan Barbosa de Assis   
% 205 - A
% 01/07/2021
% Questao 1 - primeira avaliacao      
  
clear all
close all
clc 


ampA = input('digite o valor da amplitude A: ');
ampB = input('digite o valor da amplitude B: ');

a = input('Digite o valor de a: ');
b = input('Digite o valor de b: ');

S = input('digite o valor do angulo de fase S: '); % AnguloDeFaseS
Y = input('digite o valor do angulo de fase Y: '); % AnguloDeFaseY

printf('\n\nDefinição do vetor "t": \n\n');

t0 = input('Digite o valor de t0 (t inicial): ');
tf = input('Digite o valor de tf (t final): ');
deltat = input('Digite o valor de delta_t (Delta do vetor t): ');

t = t0:deltat:tf;

x = ampA*sin(a.*t+S);
y = ampB*sin(b.*t+Y);

figure(1)
plot(x,y);
title('Lissajous');
xlabel('X');
ylabel('Y');

% print figure1.jpg   (print ja tirado) 

figure(2)
subplot(2,1,1)
plot(t,x);
title('t × x(t)');
xlabel('X');
ylabel('Y');

subplot(2,1,2)
plot(t,y); 
title('t × y(t)');
xlabel('X');
ylabel('Y');

clear all 
clc

% print figure2.jpg (printf ja tirado)


