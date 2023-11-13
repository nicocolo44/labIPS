clear all; close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones'));
addpath(fullfile(scriptDir, '..', 'punto 2\sistemas'));

[n,h] = hcanald(028693);

N = length(n);

delta = [1 zeros(1,N)]
% delta = zeros(1, N);
% delta(n==0) = 1;

subplot(2,1,1);
stem(n,h);
grid on;
h1 = sistema2(delta);
disp(length(h1));
M = 0:(N)
subplot(2,1,2);
stem(M,h1);
