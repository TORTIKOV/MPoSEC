x = -10:0.01:10;
k = -2;
y = k * x .^ 2 - 2;

ph = plot(x,y);
## axis([-10 10 -100 100]);

while true
  while k <= 2
    k = k + 0.01;
    y = k * x .^ 2 - 2;
    set(ph, 'XData', x, 'YData', y);
    drawnow
  end
  while k >= -2
    k = k - 0.01;
    y = k * x .^ 2 - 2;
    set(ph, 'XData', x, 'YData', y);
    drawnow
  end
end

