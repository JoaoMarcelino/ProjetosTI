    function valorEntropia = helper(input,aux)
    
    % A rotina helper retorna a entropia do ficheiro e mostra a
    % distribuicao estatistica do mesmo

    [matrizFrequencias,alfabeto] = histograma(input);                                          
    
    if (nargin ~= 1 && aux==1)
        bar(matrizFrequencias);
        alfabeto=char(alfabeto);
        set(gca, 'XTick', 1:length(alfabeto), 'XTickLabel', alfabeto(:));
    elseif (nargin ~= 1 && aux==2)
        
        bar(alfabeto,matrizFrequencias);
    else
        bar(matrizFrequencias);
    end

    totalFrequencias = sum(matrizFrequencias);
    probabilidades = matrizFrequencias / totalFrequencias;
    
    valorEntropia = entropia(probabilidades);
    
    % A funcao hufflen() recebe um vetor das frequencias e retorna um
    % vetor com o numero de bits necessario para codificar cada simbolo
    bitsHufflen = hufflen(matrizFrequencias);
    
    totalBits = bitsHufflen' * matrizFrequencias;
    valorHuffman = totalBits / totalFrequencias;

%     calcular X^2
%     bitsHufflen1=bitsHufflen.^2; 
%     calcular E(X^2)
%     valorHuffman1=(bitsHufflen1' * matrizFrequencias)/totalFrequencias;
%     carcular E(X^2)-E(X)^2
%     y1=valorHuffman1-valorHuffman.^2;

    y=var(bitsHufflen,matrizFrequencias);
    fprintf("Entropia: %.2f\n", valorEntropia);
    fprintf("Hufflen: %.2f\n", valorHuffman); 
    fprintf("Variância: %.2f\n\n",y);
end