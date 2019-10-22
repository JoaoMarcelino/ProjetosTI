function [c] = agrupamento(f)
    c=zeros(3,2);
    
    if(mod(length(f),2)~=0)
        f=f(1:end,1:end-1);
    end
    
    for k=1:2:length(f)
        s1=f(k);
        s2=f(k+1);
        
        %incrementar no histograma
        pos=1;
        %procurar posicao onde incrementar
        for j=1:size(c,2)
            if(c(1,j)==s1 && c(2,j)==s2)
                break;
            end
            pos=pos+1;
        end
        %incrementar
        c(1,pos)=s1;
        c(2,pos)=s2;
        c(3,pos)=c(3,pos)+1;
        %ordenar por'popularidade'
        while(pos>1)
            if(c(3,pos)>c(3,pos-1))
                aux=c(1:end,pos);
                c(1:end,pos)=c(1:end,pos-1);
                c(1:end,pos-1)=aux;
            end
            pos=pos-1;
        end   
                    
    end
    

end

