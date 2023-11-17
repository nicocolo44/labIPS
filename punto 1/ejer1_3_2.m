addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; 
delta = [zeros(1,N) 1 zeros(1,N)];
delta1 = [zeros(1,(N+1)) 1 zeros(1,(N-1))];
n = [-N: N]
ds=0.00025;
s= [-0.5:ds:0.5];


%SISTEMA 2
y2 = sistema2(delta);
Y2 = TFTD(n, y2);

modulo2 = abs(Y2);
fase2 = angle(Y2);

subplot(2,3,1);
stem(n,y2);
title('Sistema h2');
xlabel('Eje n');
ylabel('Eje h[n]');
grid on;

subplot(2,3,2);
plot(s,modulo2);
title('Modulo de la TFTD de h2');
xlabel('Frecuencia (Hz)');
ylabel('Modulo');
grid on;

subplot(2, 3, 3); 
plot(s, fase2);
title('Fase de la TFTD de h2');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');
grid on;

%SISTEMA 2 ANALITICO
h2a= (1/2)* delta - (1/2)*delta1;
subplot(2,3,4);
stem(n,h2a);
title('Sistema h2 analitico');
xlabel('Eje n');
ylabel('Eje h2[n]');
grid on;

H2a = @(s) (1/2) - (1/2)*exp(-1i*2*pi*s);

M2 = abs(H2a(s));
F2 = angle(H2a(s));

subplot(2, 3, 5); 
plot(s,M2);
title('Modulo de la TFTD analitica de h2a');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 6); 
plot(s, F2);
title('Fase de la TFTD analitica ');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
grid on;


print -f1 -dpng ejer1_3_2