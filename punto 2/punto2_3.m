clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');
subplot(4,1,1);
%plot(x);
%sound(x,fs);

y = sistema2(x);

%sound(y, fs);
%subplot(3,1,2);
plot(y);


%punto 5
y1 = filtro1(y);
%sound(y1, fs);
subplot(4,1,2);
plot(y1);

y2 = filtro2(y);
%sound(y2, fs);
subplot(4,1,3);
plot(y2);

y3 = filtro3(y);
sound(y3, fs);
subplot(4,1,4);
plot(y3);