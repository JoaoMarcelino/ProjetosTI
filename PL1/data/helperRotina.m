function valorEntropia = helperRotina(matriz)
    
    [matrizFrequencias,~] = histograma(matriz);
            
    totalFrequencias = sum(matrizFrequencias);
    probabilidades = matrizFrequencias / totalFrequencias;

    valorEntropia = entropia(probabilidades);
end