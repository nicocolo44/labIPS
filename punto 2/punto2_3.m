clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');
subplot(2,1,1);
plot(x);
%sound(x,fs);

y = sistema2(x);

sound(y, fs);
subplot(2,1,2);
plot(y);


print -f1 -dpng ejer2_3