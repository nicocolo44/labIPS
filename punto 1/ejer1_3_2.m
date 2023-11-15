addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.001;
s= [-2:ds:2];


%SISTEMA 2
y2 = sistema2(delta);
Y2 = TFTD(n, y2);

modulo2 = abs(Y2);
fase2 = angle(Y2);

subplot(2,3,1);
stem(n,y2);
title('Sistema y2');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(2,3,2);
plot(s,modulo2);
title('Módulo de la TFTD de y2');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(2, 3, 3); 
plot(s, fase2);
title('Fase de la TFTD de y2');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');
