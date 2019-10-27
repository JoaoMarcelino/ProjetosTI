function r = rotina(query,target,alfa,step)

    row = 1;
    rowFinal = size(query,1);
    column = 1;
    columnFinal = size(query,2);
    
    % Numero de tentativas wait wtf
    n_repeticoes = (length(target) - length(query)+step) * (size(target) - size(query) + step); %lmao
    
    for k = 1 : n_repeticoes
        r=target(row:rowFinal,column:columnFinal);
        disp(r);
        column= column + step;
        columnFinal= columnFinal + step;
        
        % ok shiny o marcelo tem autismo e em vez de meter um for dentro de
        % um for decidiu calcular o total de vezes e assim q chega ao fim
        % puxa para baixo
        % #lmao
        % temos de encontrar uma maneira melhor de fazer isto :)
        % but at least this works x)
        if columnFinal>size(target,2)
            column=1;
            columnFinal=size(query,2);
            row= row + step;
            rowFinal= rowFinal + step;
        end
        
    end
    
    %X=entropia(query/sum(query));  
    %y=entropia(t);
    %conjunta=double(X(:,1:2:end-1))*2^8+double(Y(:,2:2:end));
    
    
    
    
    % Eu ate queria arranjar esta merda mas nunca vi uma fiesta de codigo
    % tao grande ja sao 4:10 e o marcelino esta a falar de socos e de
    % basket comigo no discord sobre os 76rs e eu a comentar esta merda
    % toda, ainda n sei se tento ler isto ou nao, oh well, guess i'll try,
    % ja que comentei as outras 200 linhas super detalhadamente nao posso
    % parar assim #CleanAssCommentsDoJosphze
end