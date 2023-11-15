addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.001;
s= [-2:ds:2];

%SISTEMA 3
y3 = sistema3(delta);
Y3 = TFTD(n, y3);
modulo3 = abs(Y3);
fase3 = angle(Y3);
subplot(2,3,1);
stem(n,y3);

title('Sistema y3');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(2,3,2);
plot(s,modulo3);
title('Módulo de la TFTD de y3');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(2, 3, 3); 
plot(s, fase3);
title('Fase de la TFTD de y3');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');
