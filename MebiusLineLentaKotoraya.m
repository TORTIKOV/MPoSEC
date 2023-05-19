clear
u = 0:0.1:2*pi + 1;
v = -1:0.1:1;
[U,V] = meshgrid(u,v);
X = (1 + (V/2) .* cos(U/2)).*cos(U);
Y = (1 + (V/2) .* cos(U/2)).*sin(U);
Z = (V/2 .* sin(U/2));
surf(X,Y,Z);
shading interp;