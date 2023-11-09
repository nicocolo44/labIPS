clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[x, fs] = audioread('audio.wav');

subplot(2,1,1);
stem(x);
sound(x,fs);

y = sistema2(length(x),x);

sound(y, fs);
subplot(2,1,2);
stem(y);


