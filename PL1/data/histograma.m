function [matrizFrequencias,alfabeto] = histograma(input,alfabeto)
    
    % Torna input num vetor vertical
    input = input(:);
    
    if (nargin == 1)
        alfabeto = unique(input);
        
    end
    
   matrizFrequencias = histcounts(input, [alfabeto;alfabeto(numel(alfabeto))+1]);
   matrizFrequencias=matrizFrequencias';

%  matrizFrequencias = zeros(size(alfabeto));
%     for k = 1 : length(alfabeto)
%         vecPosicoes = find(input == alfabeto(k));
%         matrizFrequencias(k) = length(vecPosicoes);
%     end
end