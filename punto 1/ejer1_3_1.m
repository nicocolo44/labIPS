addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.001;
s= [-2:ds:2];



%SISTEMA 1
y1 = sistema1(delta);
Y1 = TFTD(n, y1);

modulo1 = abs(Y1);
fase1 = angle(Y1);

subplot(2,3,1);
stem(n,y1);
title('Sistema y1');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(2, 3, 2); 
plot(s,modulo1);
title('Modulo de la TFTD de y1');
xlabel('Frecuencia');
ylabel('Modulo');

subplot(2, 3, 3); 
plot(s, fase1);
title('Fase de la TFTD');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
