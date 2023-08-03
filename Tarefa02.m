% Grupo 7 (Fernando Alves, Gabriel Lyan e Pedro Guilherme)
% TURMA: 205-A         
% Tarefa 2 - tratamento de dados e ajuste de curvas

opcao = 'z';

while(opcao ~= 'c')


    printf("\n\nDigite uma opção: \n(a) Análise Tensão/Temperatura\n(b) Análise População\n(c) Sair\n\n");
    opcao = input('Digite a opção desejada: ', 's');

  switch opcao

    case 'a'
    close all
    
    %Analise de Tensão/temperatura
    
    % Passa o arquivo termistor1.dat para uma matriz
    Matriz_termistor = load('termistor1.dat'); 
    % Passa a primeira e a segunda coluna para vetores.
    X = Matriz_termistor(:,1);
    Y = Matriz_termistor(:,2);
    
    % plotar dados originais 
    figure(1)
    plot(X,Y, 'xk');
    
    %polinomio primeiro grau
    PrimeiroGrau = polyfit(X,Y,1);
    
    %polinomio segundo grau
    SegundoGrau = polyfit(X,Y,2);
    
    %polinomio  terceiro grau
    TerceiroGrau = polyfit(X,Y,3);
    
    %polinomio  quarto grau
    QuartoGrau = polyfit(X,Y,4);
    
    % Encontra relação do polinomio com X
    
    % Encontra relação do polinomio de primeiro grau com X
    polyvalx1 = polyval(PrimeiroGrau, X); 
    
    % Encontra relação do polinomio de segundo grau com X
    polyvalx2 = polyval(SegundoGrau, X);
    
    % Encontra relação do polinomio de terceiro grau com X
    polyvalx3 = polyval(TerceiroGrau, X);
    
    % Encontra relação do polinomio de quarto grau com X
    polyvalx4 = polyval(QuartoGrau, X);
    
    % plota os graficos 
    
    
    figure(2)

    plot(X,polyvalx1, 'rx');
    hold on
    plot(X,Y, '-k');
    
    figure(3)

    plot(X,polyvalx2, '*b');
    hold on
    plot(X,Y, '-k');
    
    
    figure(4)

    plot(X,polyvalx3, 'om');
    hold on
    plot(X,Y, '-k');
    
    figure(5)

    plot(X,polyvalx4, '*k');
    hold on
    plot(X,Y, '-k');
    
    
    opcao = 'z';
    
    case 'b'
    close all
   
    
    %Analise de dados 
    
    %Carregamento do arquivo
    
    load populacao.mat   
      
    % Plota X x Y (X por Y)
    
    X = M(:, 1);
    Y = M(:, 2);
    
    % plota o grafico de X x Y (X por Y) 
    
    figure(1)
    
    plot(X,Y, 'ok');
    
    % Encontra a equacao de primeira e segunda ordem para X e Y
    p1 = polyfit(X,Y,1);
    y1 = polyval(p1,X);
    
    p2 = polyfit(X,Y,2);
    y2 = polyval(p2,X);
    
    % plota X x y2
    figure(2)
    plot(X,y1);
    hold on 
    plot(X,Y, 'ok');
    %plota X x y2
    
    figure(3)
    plot(X,y2, 'r');
    
    %plota o original para a comparação 
    hold on 
    plot(X,Y, 'ok');
   
    %população 2000
    populacao_2000 =  polyval(p1, 2000);
    
    %população 2005
    populacao_2005 =  polyval(p1, 2005);
    
    %população 2016
    populacao_2016 =  polyval(p1, 2016);
       
    %população 2025
    populacao_2025 =  polyval(p1, 2025);
    
    vet_anos = [2000, populacao_2000; 2005, populacao_2005; 2016, populacao_2016; 2025, populacao_2025];
    
    printf("\n\nProjeção população dos anos solicitados: \n");
    disp(vet_anos);
    
    opcao = 'z';
    
    case 'c'
    close all
    
    printf("\n\nPrograma Encerrado!\n\n");

    otherwise
    printf("\n\nOpção inválida!\n\n");

  endswitch

  
  
endwhile