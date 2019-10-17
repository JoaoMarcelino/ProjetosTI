function e=entropia(prob)
    if (size(prob,1)>size(prob,2))
        prob=prob';
    end
    e=-prob(prob~=0)*log2((prob(prob~=0)))';
    
end