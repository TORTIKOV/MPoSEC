function res = pendulum(Len,theta0)
    g = 9.81;
    t = 0:0.01:10;

    theta(1) = theta0;
    omega(1) = 0;

    dt = t(2)-t(1);

    for i=2:length(t)
        alpha = -g/Len*sin(theta(i-1));
        theta(i) = theta(i-1) + omega(i-1)*dt;
        omega(i) = omega(i-1) + alpha*dt;
    endfor

    for i=1:length(t)
        x = Len*sin(theta(i));
        y = -Len*cos(theta(i));# убираем '-' получаем метроном
        plot([0 x], [0 y], '-o', 'LineWidth', 2, 'MarkerSize', 10, 'MarkerFaceColor', 'g');
        xlim([-10 10]);
        ylim([-10 10]);
        grid on;
        axis("equal")
        drawnow;
    endfor
endfunction
