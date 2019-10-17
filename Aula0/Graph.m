function Graph(file)
    [sinal,fs]=audioread(file);
    ts=1/fs;
    amostras=size(sinal);
    duracao= amostras*ts;
    x=0:ts:duracao-ts;
    disp(sinal);
    subplot(2,1,1);
    plot(x,sinal(:,1));
    subplot(2,1,2);
    plot(x,sinal(:,1));
end