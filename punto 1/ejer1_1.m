addpath('..\..\MATLAB\funciones')
addpath('sistemas')
clear all; close all; clc;

numA = 028569;
[n,x] = senial(numA);
subplot(2,1,1);
stem(n,x);
title('Señal del  ejercicio 1');
xlabel('n');
ylabel('x');
grid on;


X = TFTD(n,x);
ds=0.001;
s= [-2:ds:2];
subplot(2,1,2);
plot(s, X);




