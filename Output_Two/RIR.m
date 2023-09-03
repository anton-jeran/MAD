close all
clear all
clc

sg = 400;
ov = 300;
lis=["aap274_136.wav"]

path3="Multi-358/RIR1/";
for i =1:length(lis)
lis(i)

full_path3 = path3 + "/" + lis(i);
[y1,fs1] =audioread(full_path3);

figure
subplot(2,1,1)
spectrogram(y1(:,1),sg,ov,[],fs1,'yaxis')
title("Left")
subplot(2,1,2)
spectrogram(y1(:,2),sg,ov,[],fs1,'yaxis')
title("Right")


end