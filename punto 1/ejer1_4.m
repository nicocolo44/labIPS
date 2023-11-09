addpath('..\..\MATLAB\funciones')
addpath('sistemas')
[n,x] = senial(28569);

%SISTEMA 1 
y1 = sistema1(x);
subplot(2,2,1);
stem(n,y1);

%SISTEMA 2
y2 = sistema2(x);
subplot(2,2,2);
stem(n,y2);

%SISTEMA 3
y3 = sistema3(x);
subplot(2,2,3);
stem(n,y3);

%SISTEMA 4
y4 = sistema4(x);
subplot(2,2,4);
stem(n,y4);