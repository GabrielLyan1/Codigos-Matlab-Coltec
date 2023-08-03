% Nome: Gabriel Lyan Barbosa de Assis 

#Exercicio 5

x = 25*pi/180;
y = cos(2)/sin(pi/4);

vet1 = [6, 8*3, 81, exp(2.5), sqrt(65), 0.1, 5*tan(x)];
vet2 = [44, 8, log(51), 2^3, sin(pi/3), y];

tam1 = length(vet1);
tam2 = length(vet2);

printf("O tamanho do vetor 1 eh: %d\n", tam1);
printf("O tamanho do vetor 2 eh: %d\n\n", tam2);

vet3 = vet1';

disp(vet1);
disp(vet2);
disp(vet3);