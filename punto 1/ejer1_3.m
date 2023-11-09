addpath('..\..\MATLAB\funciones')
addpath('sistemas')
N = 10; delta = [zeros(1,N) 1 zeros(1,N)];
n = [-N: N]
ds=0.001;
s= [-2:ds:2];

%SISTEMA 1
y1 = sistema1(delta);
Y1 = TFTD(n, y1);
subplot(4,2,1);
stem(n,y1);
subplot(4,2,2);
plot(s, Y1)

%SISTEMA 2
y2 = sistema2(delta);
Y2 = TFTD(n, y2);
subplot(4,2,3);
stem(n,y2);
subplot(4,2,4);
plot(s, Y2);

%SISTEMA 3
y3 = sistema3(delta);
Y3 = TFTD(n, y3);
subplot(4,2,5);
stem(n,y3);
subplot(4,2,6);
plot(s, Y3);

%SISTEMA 4
y4 = sistema4(delta);
Y4 = TFTD(n, y4);
subplot(4,2,7);
stem(n,y4);
subplot(4,2,8);
plot(s, Y4);