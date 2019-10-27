function valorEntropia = helper(input,~)
    
    % A rotina helper retorna a entropia do ficheiro e mostra a
    % distribuicao estatistica do mesmo

    [matrizFrequencias,alfabeto] = histograma(input);                                          
    
    if (nargin ~= 1)
        bar(matrizFrequencias);
        set(gca, 'XTick', 1:length(alfabeto), 'XTickLabel', alfabeto(:));
       
    else
        bar(alfabeto, matrizFrequencias);
    end

    totalFrequencias = sum(matrizFrequencias);
    probabilidades = matrizFrequencias / totalFrequencias;
    
    valorEntropia = entropia(probabilidades);
    
    % A funcao hufflen() recebe um vetor das frequencias e retorna um
    % vetor com o numero de bits necessario para codificar cada simbolo
    bitsHufflen = hufflen(matrizFrequencias);
    
    totalBits = bitsHufflen' * matrizFrequencias;
    valorHuffman = totalBits / totalFrequencias;
    
    fprintf("Entropia: %.2f\n", valorEntropia);
    fprintf("Hufflen: %.2f\n\n", valorHuffman); 
end