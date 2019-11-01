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

figure(9);
disp("Lyrics.txt");subplot(2,3,1);helper(lyrics,1);title("Lyrics");
disp("Landscape");subplot(2,3,2);helper(landscape);title("Landscape");
disp("MRI");subplot(2,3,3);helper(MRI);title("MRI");
disp("MRI Black/White");subplot(2,3,4);helper(MRIBW,2);title("MRI Black/White");
disp("Audio");subplot(2,3,5);helper(aud,2);title("Audio");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lyrics2=double(lyrics(:,1:2:end-1))*2^8+double(lyrics(:,2:2:end));
landscape2=double(landscape(:,1:2:end-1))*2^8+double(landscape(:,2:2:end));
MRI2 = double(MRI(:,1:2:end-1))*2^8 + double(MRI(:,2:2:end)); 
MRIBW2=double(MRIBW(:,1:2:end-1))*2^8 + double(MRIBW(:,2:2:end));
aud=aud';
aud2=double(aud(:,1:2:end-1))*2^8 + double(aud(:,2:2:end));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(10);
disp("Lyrics Conjunto");subplot(2,3,1);helper(lyrics2);title("Lyrics Conjunto");
disp("Landscape Conjunto");subplot(2,3,2);helper(landscape2);title("Landscape Conjunto");
disp("MRI Conjunto");subplot(2,3,3);helper(MRI2);title("MRI Conjunto");
disp("MRI Black/White Conjunto");subplot(2,3,4);helper(MRIBW2);title("MRI Black/White Conjunto");
disp("Audio Conjunto");subplot(2,3,5);helper(aud2);title("Audio Conjunto");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

step = 15;
query = imread("mi_data\query.bmp");
i = 1;
arrayInfoMutua = zeros([8,1]);  

targetOriginal = imread("mi_data\target_original.bmp");
infoMutuaTargetOriginal = rotina(query,targetOriginal,step,i);
arrayInfoMutua(i) = infoMutuaTargetOriginal;
i = i+1;
fprintf("Target Original - %.4f \n",infoMutuaTargetOriginal);

targetInv = imread("mi_data\target_inverted.bmp");
infoMutuaTargetInv = rotina(query,targetInv,step,i);
arrayInfoMutua(i) = infoMutuaTargetInv;
i = i+1;
fprintf("Target Inverted - %.4f \n",infoMutuaTargetInv);

targetContrast = imread("mi_data\target_lightning_contrast.bmp");
infoMutuaTargetContrast = rotina(query,targetContrast,step,i);
arrayInfoMutua(i) = infoMutuaTargetContrast;
i = i+1;
fprintf("Target Contrast - %.4f \n",infoMutuaTargetContrast);

targetNoise = imread("mi_data\target_noise.bmp");
infoMutuaTargetNoise = rotina(query,targetNoise,step,i);
arrayInfoMutua(i) = infoMutuaTargetNoise;
i = i+1;
fprintf("Target Noise - %.4f \n",infoMutuaTargetNoise);

target1 = imread("mi_data\target1.bmp");
infoMutuaTarget1 = rotina(query,target1,step,i);
arrayInfoMutua(i) = infoMutuaTarget1;
i = i+1;
fprintf("Target 1 - %.4f \n",infoMutuaTarget1);

target2 = imread("mi_data\target2.bmp");
infoMutuaTarget2 = rotina(query,target2,step,i);
arrayInfoMutua(i) = infoMutuaTarget2;
i = i+1;
fprintf("Target 2 - %.4f \n",infoMutuaTarget2);

target3 = imread("mi_data\target3.bmp");
infoMutuaTarget3 = rotina(query,target3,step,i);
arrayInfoMutua(i) = infoMutuaTarget3;
i = i+1;
fprintf("Target 3 - %.4f \n",infoMutuaTarget3);

target4 = imread("mi_data\target4.bmp");
infoMutuaTarget4 = rotina(query,target4,step,i);
arrayInfoMutua(i) = infoMutuaTarget4;
fprintf("Target 4 - %.4f \n\n",infoMutuaTarget4);

arrayInfoMutua=sort(arrayInfoMutua,'descend');
disp(arrayInfoMutua);