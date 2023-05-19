function retval = Parametric_Normal (funX, funY, funZ, u0, v0)
  u = 0:0.1:2*pi + 1;
  v = -1:0.1:1;
  [U, V] = meshgrid(u, v);
  h = 1e-8;
  X = funX(U, V);
  Y = funY(U, V);
  Z = funZ(U, V);
  x0 = funX(u0, v0);
  y0 = funY(u0, v0);
  z0 = funZ(u0, v0);

  dxdu = (funX(u0 + h, v0) - funX(u0, v0)) / h
  dydu = (funY(u0 + h, v0) - funY(u0, v0)) / h
  dzdu = (funZ(u0 + h, v0) - funZ(u0, v0)) / h
  dxdv = (funX(u0, v0 + h) - funX(u0, v0)) / h
  dydv = (funY(u0, v0 + h) - funY(u0, v0)) / h
  dzdv = (funZ(u0, v0 + h) - funZ(u0, v0)) / h

  normal = cross([dxdu, dydu, dzdu], [dxdv, dydv, dzdv])
  t = 0:0.01:1;
  XN = normal(1) * t + x0;
  YN = normal(2) * t + y0;
  ZN = normal(3) * t + z0;
  hold on
  plot3(XN, YN, ZN);
  axis equal;
  xlabel('x');
  ylabel('y');
  zlabel('z');
  S = surf(X, Y, Z);
  colormap(ocean)
  shading interp
  #set(S, "facealpha", 0.5);
  hold off
endfunction
