function valor = helper(file,~)
    
    % A rotina helper retorna a entropia do ficheiro e mostra a
    % distribuicao estatistica do mesmo

    % A rotina histograma calcula:
    % frequencias - Matriz x/1 das frequencias do alfabeto 
    % alfabeto - Conjunto dos simbolos que aparecem pelo menos uma vez
    [frequencias,alfabeto] = histograma(file);                                          
    
    % Se for usado um auxiliar para alem do file, cria um grafico com o -
    % alfabeto no eixo dos X
    if (nargin ~= 1)
        bar(frequencias);
        set(gca, 'XTick', 1:length(alfabeto), 'XTickLabel', alfabeto(:));
    
    % Caso contrario cria um grafico com o alfabeto default do bar()    
    else
        bar(alfabeto, frequencias);
    end

    % Calcula o total de simbolos presentes em sum para criar uma matriz
    % com as probabilidades de cada simbolo
    soma = sum(frequencias);
    probabilidades = frequencias / soma;
    
    % Utiliza a matriz das probabilidades para calcular a entropia(valor)
    valor = entropia(probabilidades);
    
    % A funcao hufflen() recebe um vetor das frequencias e retorna um
    % vetor com o numero de bits necessario para os codificar
    bitsHufflen = hufflen(frequencias);
    
    % Calculamos o total de bits para codificar tudo ao multiplicar as duas
    % matrizes e depois dividimos pelo total de simbolos para calcular o
    % numero de bits do codigo de Huffman
    totalBits = bitsHufflen' * frequencias;
    valorHuffman = totalBits / soma;
    
    % Display da Entropia e do valor medio dos codigos de Huffman
    fprintf("Entropia: %.2f\n", valor);
    fprintf("Hufflen: %.2f\n\n", valorHuffman);
end