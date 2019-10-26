function r=rotina(query,target,alfa,step)
    rpos=1;
    rpos_fnl=size(query);
    cpos=1;
    cpos_fnl=size(query,2);
    
    n_repeticoes=(length(target)-length(query)+1)*(size(target)-size(query)+1);
    for k=1:step:n_repeticoes
        r=target(rpos:rpos_fnl,cpos:cpos_fnl);
        disp(r);
        cpos= cpos + step;
        cpos_fnl= cpos_fnl + step;
        
        
        if cpos_fnl>size(target,2)
            cpos=1;
            cpos_fnl=size(query,2);
            rpos= rpos + step;
            rpos_fnl= rpos_fnl + step;
        end
        
    end
    
    %X=entropia(query/sum(query));
    %y=entropia(t);
    %conjunta=double(X(:,1:2:end-1))*2^8+double(Y(:,2:2:end));

end