% Nome: Gabriel Lyan Barbosa de Assis 

#Exercicio 8

clear all
clc

m = [3 2 1; 0:0.5:1; linspace(6,8,3)];

disp(m);

m2 = m(2,:);
m3 = m(:,3);

disp(m2*m3);

