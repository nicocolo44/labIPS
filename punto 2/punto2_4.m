clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');

N = length(x);

delta = [1 zeros(1,N)]
y = sistema2(delta)

y2 = filtro2(y);
subplot(2,1,1);
stem(y2);
ylabel('Salida');
xlabel('n');
title('Respuesta impulsional de filtro de 2 ramas + canal');

y3 = filtro3(y);
subplot(2,1,2);
stem(y3);
ylabel('Salida');
xlabel('n');
title('Respuesta impulsional de filtro de 3 ramas + canal');

print -f1 -dpng ejer2_4