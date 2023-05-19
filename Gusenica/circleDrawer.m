function ph = circleDrawer(x, y, R, ph)
    t = 0:pi/50:2*pi;
    circsx = R.*cos(t) + x;
    circsy = R.*sin(t) + y;
    ph = plot(circsx,circsy);
end

