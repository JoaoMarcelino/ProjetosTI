landscape=imread("landscape.bmp");
MRI=imread("MRI.bmp");
MRIBW=imread("MRIbin.bmp");
aud=audioread("soundmono.wav");


%  Artic Monkeys Lyrics 
file=fopen("lyrics.txt","r");
lyrics=fscanf(file,"%s");
fclose(file);
lyrics=regexprep(lyrics,"[^a-zA-Z0-9]","");
%lyrics2=double(lyrics(:,1:2:end-1))*2^8+double(lyrics(:,2:2:end));
%helper(lyrics2,1);

% Landscape
%landscape2=double(landscape(:,1:2:end-1))*2^8+double(landscape(:,2:2:end));
%helper(landscape2);

%MRI
%helper(MRI);
%MRI2 = double(MRI(:,1:2:end-1))*2^8 + double(MRI(:,2:2:end));   
%helper(MRI2,1);


%MRIBW
%helper(MRIBW);

%Audio
%helper(aud);




query = imread("mi_data\query.bmp");
target = imread("mi_data\target_original.bmp");
alfabeto = 0:9; %xd
step = 15;
a = rotinav2(query,target,alfabeto,step);






