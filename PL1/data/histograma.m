function [h,alpha]=histograma(f,alpha)

    f=f(:);
    
    if (nargin==1)
        alpha=unique(f);
    end
    
    h=zeros(size(alpha));
    
    for k=1:length(alpha)
        i=find(f==alpha(k));
        h(k)=length(i);
    end
    
end