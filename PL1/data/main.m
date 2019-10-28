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
% landscape2=double(landscape(:,1:2:end-1))*2^8+double(landscape(:,2:2:end));
% helper(landscape2);

%MRI
%helper(MRI);
%MRI2 = double(MRI(:,1:2:end-1))*2^8 + double(MRI(:,2:2:end));   
%helper(MRI2);


%MRIBW
%helper(MRIBW);

%Audio
%helper(aud);
% 
step = 15;
query = imread("mi_data\query.bmp");
i = 1;
arrayInfoMutua = zeros(8,1);

targetOriginal = imread("mi_data\target_original.bmp");
infoMutuaTargetOriginal = rotina(query,targetOriginal,step,i);
arrayInfoMutua(i) = infoMutuaTargetOriginal;
i = i+1;
disp(infoMutuaTargetOriginal);

targetInv = imread("mi_data\target_inverted.bmp");
infoMutuaTargetInv = rotina(query,targetInv,step,i);
arrayInfoMutua(i) = infoMutuaTargetInv;
i = i+1;
disp(infoMutuaTargetInv);

targetContrast = imread("mi_data\target_lightning_contrast.bmp");
infoMutuaTargetContrast = rotina(query,targetContrast,step,i);
arrayInfoMutua(i) = infoMutuaTargetContrast;
i = i+1;
disp(infoMutuaTargetContrast);

targetNoise = imread("mi_data\target_noise.bmp");
infoMutuaTargetNoise = rotina(query,targetNoise,step,i);
arrayInfoMutua(i) = infoMutuaTargetNoise;
i = i+1;
disp(infoMutuaTargetNoise);

target1 = imread("mi_data\target1.bmp");
infoMutuaTarget1 = rotina(query,target1,step,i);
arrayInfoMutua(i) = infoMutuaTarget1;
i = i+1;
disp(infoMutuaTarget1);

target2 = imread("mi_data\target2.bmp");
infoMutuaTarget2 = rotina(query,target2,step,i);
arrayInfoMutua(i) = infoMutuaTarget2;
i = i+1;
disp(infoMutuaTarget2);

target3 = imread("mi_data\target3.bmp");
infoMutuaTarget3 = rotina(query,target3,step,i);
arrayInfoMutua(i) = infoMutuaTarget3;
i = i+1;
disp(infoMutuaTarget3);

target4 = imread("mi_data\target4.bmp");
infoMutuaTarget4 = rotina(query,target4,step);
arrayInfoMutua(i) = infoMutuaTarget4;
disp(infoMutuaTarget4);

sort(arrayInfoMutua, 'descend')
disp(arrayInfoMutua);