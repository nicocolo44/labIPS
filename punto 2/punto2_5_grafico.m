clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');
subplot(3,1,1);
stem(x);
ylabel('x[n]');
xlabel('n');
title('Señal x[n]');

y = sistema2(x)
y2 = filtro2(y);
y3 = filtro3(y)

subplot(3,1,2);
stem(y2);
ylabel('y2[n]');
xlabel('n');
title('Señal x[n] pasada por el canal (y[n]) + filtro de 2 ramas');

subplot(3,1,3);
stem(y3);
ylabel('y3[n]');
xlabel('n');
title('Señal x[n] pasada por el canal (y[n]) + filtro de 3 ramas');

%print -f1 -dpng ejer2_5_grafico