addpath('..\MATLAB\funciones');
addpath('sistemas');
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.00025;
s= [-0.5:ds:0.5];

%SISTEMA 3
y3 = sistema3(delta);
subplot(2,3,1);
stem(n,y3);
title('Sistema h3');
xlabel('Eje n');
ylabel('Eje h3[n]');
grid on;

Y3 = TFTD(n, y3);
modulo3 = abs(Y3);
fase3 = angle(Y3);

subplot(2,3,2);
plot(s,modulo3);
title('Modulo de la TFTD de h3');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 3); 
plot(s, fase3);
title('Fase de la TFTD de h3');
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');
grid on;

%SISTEMA 3 ANALITICO
h3a=zeros(1,length(n));
h3a(11)= 1/4;
for i=12:length(n)
   h3a(i)= (3/8)*((1/2)^(i-12)); 
end

subplot(2,3,4);
stem(n,h3a);
title('Sistema h3 analitico');
xlabel('Eje n');
ylabel('Eje h3a[n]');
grid on;

H3a = TFTD(n, h3a);
M3 = abs(H3a);
F3 = angle(H3a);

subplot(2,3,5);
plot(s,M3);
title('Modulo de la TFTD de h3a');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 6); 
plot(s, F3);
title('Fase de la TFTD de h3a');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
grid on;

