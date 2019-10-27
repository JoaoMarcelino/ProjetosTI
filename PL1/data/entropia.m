function valor = entropia(prob)
    
    % A rotina entropia recebe uma matriz de probabilidades "prob", calcula   
    % e retorna a entropia "valor"
    
    % Verifica se o vetor "prob" é horizontal. Se não, transforma-o
    if (size(prob,1) > size(prob,2))
        prob = prob';
    end
    
    % Calculo da entropia "val" atraves da multiplicacao de matrizes,
    % facilitando o processo do calculo somatorio 
    valor = -prob(prob ~= 0) * log2((prob(prob ~= 0)))';
end