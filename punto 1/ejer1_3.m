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

subplot(4,3,1);
stem(n,y1);
title('Sistema y1');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(4, 3, 2); 
plot(s,modulo1);
title('Módulo de la TFTD de y1');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(4, 3, 3); 
plot(s, fase1);
title('Fase de la TFTD');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');

%SISTEMA 2
y2 = sistema2(delta);
Y2 = TFTD(n, y2);

modulo2 = abs(Y2);
fase2 = angle(Y2);

subplot(4,3,4);
stem(n,y2);
title('Sistema y2');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(4,3,5);
plot(s,modulo2);
title('Módulo de la TFTD de y2');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(4, 3, 6); 
plot(s, fase2);
title('Fase de la TFTD de y2');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');

%SISTEMA 3
y3 = sistema3(delta);
Y3 = TFTD(n, y3);
modulo3 = abs(Y3);
fase3 = angle(Y3);
subplot(4,3,7);
stem(n,y3);

title('Sistema y3');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(4,3,8);
plot(s,modulo3);
title('Módulo de la TFTD de y3');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(4, 3, 9); 
plot(s, fase3);
title('Fase de la TFTD de y3');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');

%SISTEMA 4
y4 = sistema4(delta);
Y4 = TFTD(n, y4);
modulo4 = abs(Y4);
fase4 = angle(Y4);
subplot(4,3,10);
stem(n,y4);

title('Sistema y4');
xlabel('Eje n');
ylabel('Eje y[n]');

subplot(4,3,11);
plot(s,modulo4);
title('Módulo de la TFTD de y4');
xlabel('Frecuencia (Hz)');
ylabel('Módulo');

subplot(4, 3, 12); 
plot(s, fase4);
title('Fase de la TFTD de y4');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');