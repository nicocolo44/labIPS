addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.001;
s= [-2:ds:2];

%SISTEMA 4
y4 = sistema4(delta);
Y4 = TFTD(n, y4);
modulo4 = abs(Y4);
fase4 = angle(Y4);
subplot(2,3,1);
stem(n,y4);

title('Sistema y4');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(2,3,2);
plot(s,modulo4);
title('Módulo de la TFTD de y4');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(2, 3, 3); 
plot(s, fase4);
title('Fase de la TFTD de y4');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');

