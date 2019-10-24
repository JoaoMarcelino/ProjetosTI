function c=Conjuntos(f)
    c=zeros(1,2);
    tam=length(f);
    
    if mod(tam,2)==1
        f=f(0:end,0:end-1);
    end
    
    i=1;
    for k=1:2:length(f)
        j=find((f==f(k)) & (f+1==f(k+1)));
        c(i,1)=f(k);
        c(i,2)=f(k+1);
        c(i,3)=length(j);
        i=i+1;
    end
    
        
end