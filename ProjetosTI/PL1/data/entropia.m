function valorEntropia = entropia(matrizProb)
    
    % Verifica se o vetor "prob" é horizontal para a multiplicacao
    if (size(matrizProb,1) > size(matrizProb,2))
        matrizProb = matrizProb';
    end
    
    % Calculo da entropia "val" atraves da multiplicacao de matrizes
    valorEntropia = -matrizProb(matrizProb ~= 0) * log2((matrizProb(matrizProb ~= 0)))';
end