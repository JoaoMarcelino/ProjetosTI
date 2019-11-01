    function maxInfo = rotina(query,target,step,i)
    
    rowFinal = size(query,1);
    columnFinal = size(query,2);
    entropiaQuery = helperRotina(query);
    posInfoColumn = 1;
    posInfoRow = 1;
    maxInfo = 0;
    
    for row = 1 : step : size(target,1) - size(query,1) + 1 
        for column = 1 : step : size(target,2) - size(query,2) + 1 
            
            janela = target(row:row+rowFinal-1, column:column+columnFinal-1);
            entropiaJanela = helperRotina(janela);
            matrizConjunta = double(janela) * 2^8 + double(query);
            entropiaConjunta = helperRotina(matrizConjunta);
            
            informacaoMutua = entropiaJanela + entropiaQuery - entropiaConjunta;
            
            if (informacaoMutua > maxInfo)
                maxInfo = informacaoMutua;
                x = column;
                y = row;
            end
            posInfoColumn = posInfoColumn + 1;
        end
        posInfoColumn = 1;
        posInfoRow = posInfoRow + 1;
    end
    figure(i);
    imshow(target);
    figure(i);
    rectangle('Position', [x, y, columnFinal, rowFinal], 'LineWidth', 2, 'LineStyle', '--', 'EdgeColor', 'r');
    
end