addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; 
delta = [zeros(1,N) 1 zeros(1,N)];
delta1 = [zeros(1,(N+1)) 1 zeros(1,(N-1))];
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
title('Sistema h1');
xlabel('Eje n');
ylabel('Eje h1[n]');
grid on;

subplot(2, 3, 2); 
plot(s,modulo1);
title('Modulo de la TFTD de h1');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 3); 
plot(s, fase1);
title('Fase de la TFTD');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
grid on;

%SISTEMA 1 ANALITICO
h1a= (1/2)* delta + (1/2)*delta1;
subplot(2,3,4);
stem(n,h1a);
title('Sistema h1 analitico');
xlabel('Eje n');
ylabel('Eje h1a[n]');
grid on;

H1a = @(s) (1/2) + (1/2)*exp(-1i*2*pi*s);

M1 = abs(H1a(s));
F1 = angle(H1a(s));

subplot(2, 3, 5); 
plot(s,M1);
title('Modulo de la TFTD analitica de h1');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 6); 
plot(s, F1);
title('Fase de la TFTD analitica ');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
grid on;

print -f1 -dpng ejer1_3_1