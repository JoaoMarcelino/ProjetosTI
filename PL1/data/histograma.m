function [matrizFrequencias,alfabeto] = histograma(input,alfabeto)
    
    % Torna input num vetor vertical
    input = input(:);
    
    if (nargin == 1)
        alfabeto = unique(input);
    end
    
    %matrizFrequencias = zeros(size(alfabeto));
    
   matrizFrequencias = histcounts(input);

   %     for k = 1 : length(alfabeto)
%         vecPosicoes = find(input == alfabeto(k));
%         matrizFrequencias(k) = length(vecPosicoes);
%     end
end
