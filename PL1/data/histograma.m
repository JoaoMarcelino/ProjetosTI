function [frequencias,alfabeto] = histograma(file,alfabeto)
    
    % A rotina histograma recebe um ficheiro (e um alfabeto, opcional,
    % caso nao o receba este é calculado) e retorna o alfabeto e uma
    % matriz de frequencias de cada simbolo do alfabeto
    
    % Transformamos "file" num vetor de uma coluna
    file = file(:);
    
    % Caso nao seja fornecido o alfabeto, este é calculado usando a funcao
    % unique(), que retorna um vetor com todos os simbolos que aparecem
    % pelo menos uma vez
    if (nargin == 1)
        alfabeto = unique(file);
    end
    
    % Cria um vetor vertical (x/1) do tamanho do alfabeto
    frequencias = zeros(size(alfabeto));
    
    % Utiliza o vetor "frequencias" para armazenar as frequencias dos
    % simbolos do ficheiro. Corre um ciclo para cada letra do alfabeto.
    for k = 1 : length(alfabeto)
        % A rotina find retorna um vetor "vec" com todas as posicoes em que
        % a letra indice "k" de alfabeto aparece 
        vec = find(file == alfabeto(k));
        % É adicionado ao vetor vertical frequencias o numero de
        % ocorrencias do simbolo atraves da length do vetor vec
        frequencias(k) = length(vec);
    end
end