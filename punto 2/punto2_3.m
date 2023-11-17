clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');
subplot(2,1,1);
stem(x);
ylabel('x[n]');
xlabel('n');
title('Señal x[n]');

y = sistema2(x);

sound(y, fs);
subplot(2,1,2);
stem(y);
ylabel('y[n]');
xlabel('n');
title('Señal x[n] pasada por el canal (y[n])');

%print -f1 -dpng ejer2_3