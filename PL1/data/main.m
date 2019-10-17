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

% Landscape
%disp(helper(landscape));

%MRI
%disp(helper(MRI));

%MRIBW
%disp(helper(MRIBW));

%Audio
%disp(helper(aud));





