clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');


%punto 5
subplot(2,1,1);
stem(x)
title('Señal original')
xlabel('n');
ylabel('x[n]');

y= sistema2(x)
y2 = filtro2(y);
sound(y2, fs);
subplot(2,1,2);
stem(y2);
title('Señal obtenida luego del filtrado')
xlabel('n');
ylabel('y[n]');

%print -f1 -dpng ejer2_5_filtro2
