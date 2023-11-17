addpath('..\funciones');
addpath('sistemas');
[n,x] = senial(28569);

%SISTEMA 1 
y1 = sistema1(x);
subplot(2,2,1);
stem(n,y1);
title('Salida del sistema 1');
xlabel('y[n]');
ylabel('n');

%SISTEMA 2
y2 = sistema2(x);
subplot(2,2,2);
stem(n,y2);
title('Salida del sistema 2');
xlabel('y[n]');
ylabel('n');

%SISTEMA 3
y3 = sistema3(x);
subplot(2,2,3);
stem(n,y3);
title('Salida del sistema 3');
xlabel('y[n]');
ylabel('n');

%SISTEMA 4
y4 = sistema4(x);
subplot(2,2,4);
stem(n,y4);

title('Salida del sistema 4');
xlabel('y[n]');
ylabel('n');

%print -f1 -dpng ejer1_4
