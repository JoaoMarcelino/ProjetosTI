function val=helper(smth,aux)
[h,alpha]=histograma(smth);
if (nargin~=1)
    bar(h);
    set(gca,'XTick',1:length(alpha),'XTickLabel',alpha(:));
else
    bar(alpha,h);
end
soma=sum(h);
prob=h/soma;
val=entropia(prob);
end

