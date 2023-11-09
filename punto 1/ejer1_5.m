addpath('..\..\MATLAB\funciones')
addpath('sistemas')
[n,x] = senial(28569);
ds=0.001;
s= [-2:ds:2];

%SISTEMA 1 
y1 = sistema1(x);
Y1 = TFTD(n,y1)
subplot(2,2,1);
plot(s,Y1);

%SISTEMA 2
y2 = sistema2(x);
Y2 = TFTD(n,y2)
subplot(2,2,2);
plot(s,Y2);

%SISTEMA 3
y3 = sistema3(x);
Y3 = TFTD(n,y3)
subplot(2,2,3);
plot(s,Y3);

%SISTEMA 4
y4 = sistema4(x);
Y4 = TFTD(n,y4)
subplot(2,2,4);
plot(s,Y4);

