addpath('..\funciones');
addpath('sistemas');
[n,x] = senial(28569);
ds=0.00025;
s= [-0.5:ds:0.5];

%SISTEMA 1 
y1 = sistema1(x);
Y1 = TFTD(n,y1)
modulo1 = abs(Y1);
fase1 = angle(Y1);
subplot(4,2,1);
plot(s,modulo1);
title('TFTD de la salida del sistema 1');
ylabel('Modulo de Y1');
xlabel('Frecuencia');
subplot(4,2,2);
plot(s, fase1);
ylabel('Angulo de Y1');
xlabel('Frecuencia');

%SISTEMA 2
y2 = sistema2(x);
Y2 = TFTD(n,y2)
modulo2 = abs(Y2);
fase2 = angle(Y2);
subplot(4,2,3);
plot(s,modulo2);
title('TFTD de la salida del sistema 2');
ylabel('Modulo de Y2');
xlabel('Frecuencia');
subplot(4,2,4);
plot(s, fase2);
ylabel('Angulo de Y2');
xlabel('Frecuencia');

%SISTEMA 3
y3 = sistema3(x);
Y3 = TFTD(n,y3)
modulo3 = abs(Y3);
fase3 = angle(Y3);
subplot(4,2,5);
plot(s,modulo3);
title('TFTD de la salida del sistema 3');
ylabel('Modulo de Y3');
xlabel('Frecuencia');
subplot(4,2,6);
plot(s, fase3);
ylabel('Angulo de Y3');
xlabel('Frecuencia');

%SISTEMA 4
y4 = sistema4(x);
Y4 = TFTD(n,y4)
modulo4 = abs(Y4);
fase4 = angle(Y4);
subplot(4,2,7);
plot(s,modulo4);
title('TFTD de la salida del sistema 4');
ylabel('Modulo de Y4');
xlabel('Frecuencia');
subplot(4,2,8);
plot(s, fase4);
ylabel('Angulo de Y4');
xlabel('Frecuencia');


%print -f1 -dpng ejer1_5


