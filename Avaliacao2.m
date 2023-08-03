% Grupo 7 (Fernando Alves, Gabriel Lyan e Pedro Guilherme)
% TURMA: 205-A         
% Arquivo principal
  
clc
clear all

Avaliacao02 = 1;

while(Avaliacao02 ~= 3 && Avaliacao02 < 3 && Avaliacao02 > 0)

Avaliacao02 = menu('Escolha uma Opção: ','(1) Tarefa 1','(2) Tarefa 2','(3) Sair');
close all

    switch Avaliacao02
      
      case 1 
        clc
        printf('\nVocê selecionou a tarefa 1! \n\nTarefa 1: \n\n');
        Tarefa01;
        Avaliacao02 = 1;
      case 2
        clc
        printf('\nVocê selecionou a tarefa 2! \n\nTarefa 2: \n');
        Tarefa02;
        Avaliacao02 = 1;
      case 3 
        printf('\nPrograma encerrado! \n');
    endswitch
    
endwhile

clear all