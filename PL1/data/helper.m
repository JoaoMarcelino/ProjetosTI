function val=helper(smth,~)

    [h,alpha]=histograma(smth);

    if (nargin~=1)
        bar(h);
        set(gca,'XTick',1:length(alpha),'XTickLabel',alpha(:));
        
    else
        bar(alpha,h);
        %set(gca,'XTick',1:length(alpha),'XTickLabel',alpha(:));
    end

    soma=sum(h);
    prob=h/soma;

    val=entropia(prob);

    HLen=hufflen(h);
    worseval=HLen'*h/sum(h);

    fprintf("Entropia: %.2f\n",val);
    fprintf("Hufflen: %.2f\n\n",worseval);
    
end

