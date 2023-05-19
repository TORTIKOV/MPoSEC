clear, clcx
x = 0:pi.100:4*pi;
y = x;
[X,Y] = meshgrid(x,y);
z = 3*sin(X) + cos(Y);
h = surf(z);
