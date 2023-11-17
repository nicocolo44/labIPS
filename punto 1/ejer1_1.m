addpath('..\..\MATLAB\funciones')
addpath('sistemas')
clear all; close all; clc;

numA = 028569;
[n,x] = senial(numA);
subplot(3,1,1);
stem(n,x);
title('Señal en variable discreta');
xlabel('n');
ylabel('x');
grid on;


X = TFTD(n,x);
modulo = abs(X);
fase = angle(X);

ds=0.00025;
s= [-0.5:ds:0.5];
subplot(3,1,2);
plot(s, modulo);
title('Señal en el dominio de la frecuencia (TFTD)');
xlabel('s');
ylabel('Modulo');
subplot(3,1,3);
plot(s, fase)
xlabel('s');
ylabel('Angulo');

%print -f1 -dpng figurita



