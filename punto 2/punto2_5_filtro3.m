clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');


%punto 5
subplot(2,1,1);
stem(x)

y= sistema2(x)
y3 = filtro3(y);
sound(y3, fs);
subplot(2,1,2);
stem(y3);

print -f1 -dpng ejer2_5_filtro3