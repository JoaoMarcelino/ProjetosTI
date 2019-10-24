landscape=imread("landscape.bmp");
MRI=imread("MRI.bmp");
MRIBW=imread("MRIbin.bmp");
aud=audioread("soundmono.wav");


%  Artic Monkeys Lyrics 
file=fopen("lyrics.txt","r");
lyrics=fscanf(file,"%s");
fclose(file);
lyrics=regexprep(lyrics,"[^a-zA-Z0-9]","");
%helper(lyrics,1);
c=Conjuntos(lyrics);
disp(c);

% Landscape
%helper(landscape);

%MRI
%helper(MRI);

%MRIBW
%helper(MRIBW);

%Audio
%helper(aud);







