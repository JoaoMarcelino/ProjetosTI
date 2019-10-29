landscape=imread("landscape.bmp");
MRI=imread("MRI.bmp");
MRIBW=imread("MRIbin.bmp");
aud=audioread("soundmono.wav");

% Artic Monkeys Lyrics 
file=fopen("lyrics.txt","r");
lyrics=fscanf(file,"%s");
fclose(file);
lyrics=regexprep(lyrics,"[^a-zA-Z0-9]","");
lyrics=double(lyrics);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
subplot(2,3,1);helper(lyrics,1);
subplot(2,3,2);helper(landscape); 
subplot(2,3,3);helper(MRI);
subplot(2,3,4);helper(MRIBW);
subplot(2,3,5);helper(aud);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyrics2=double(lyrics(:,1:2:end-1))*2^8+double(lyrics(:,2:2:end));
landscape2=double(landscape(:,1:2:end-1))*2^8+double(landscape(:,2:2:end));
MRI2 = double(MRI(:,1:2:end-1))*2^8 + double(MRI(:,2:2:end)); 
MRIBW2=double(MRIBW(:,1:2:end-1))*2^8 + double(MRIBW(:,2:2:end));
aud=aud';
aud2=double(aud(:,1:2:end-1))*2^8 + double(aud(:,2:2:end));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
subplot(2,3,1);helper(lyrics2,1);
subplot(2,3,2);helper(landscape2); 
subplot(2,3,3);helper(MRI2);
subplot(2,3,4);helper(MRIBW2);
subplot(2,3,5);;helper(aud2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
step = 15;
query = imread("mi_data\query.bmp");
i = 3;
arrayInfoMutua = zeros([8,1]);

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
infoMutuaTarget4 = rotina(query,target4,step,i);
arrayInfoMutua(i) = infoMutuaTarget4;
disp(infoMutuaTarget4);
arrayInfoMutua=sort(arrayInfoMutua,'descend');
disp(arrayInfoMutua);