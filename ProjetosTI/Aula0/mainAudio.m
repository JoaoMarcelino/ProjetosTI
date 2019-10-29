function mainAudio()
    [sinal,fs]=audioread("saxriff.wav");
    player=audioplayer(sinal, fs);
%     play(player);
%     sound(sinal,fs);
end

