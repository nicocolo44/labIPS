addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.00025;
s= [-0.5:ds:0.5];

%SISTEMA 4
y4 = sistema4(delta);
Y4 = TFTD(n, y4);
modulo4 = abs(Y4);
fase4 = angle(Y4);
subplot(2,3,1);
stem(n,y4);
title('Sistema h4');
xlabel('Eje n');
ylabel('Eje h4[n]');
grid on;

subplot(2,3,2);
plot(s,modulo4);
title('Modulo de la TFTD de h4');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 3); 
plot(s, fase4);
title('Fase de la TFTD de h4');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
grid on;

%SISTEMA 4 ANALITICO
h4a=zeros(1,length(n));
h4a(11)= 1/4;
for i=12:length(n)
   h4a(i)= (-3/8)*((-1/2)^(i-12)); 
end

subplot(2,3,4);
stem(n,h4a);
title('Sistema h4 analitico');
xlabel('Eje n');
ylabel('Eje h4a[n]');
grid on;

H4a = TFTD(n, h4a);
M4 = abs(H4a);
F4 = angle(H4a);

subplot(2,3,5);
plot(s,M4);
title('Modulo de la TFTD de h4a');
xlabel('Frecuencia');
ylabel('Modulo');
grid on;

subplot(2, 3, 6); 
plot(s, F4);
title('Fase de la TFTD de h4a');
xlabel('Frecuencia');
ylabel('Fase (radianes)');
grid on;


print -f1 -dpng ejer1_3_4

