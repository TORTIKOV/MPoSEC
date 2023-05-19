function retval = FSOLVER (f, x0)
    h = 1e-10;
    x = -10:0.01:10;
    plot(x, f(x));
    hold on;
    xlabel('x');
    ylabel('y');
    zlabel('z');
    grid on;
    X0 = -x0:0.3:x0;
    ANS1 = zeros(1,length(X0));
    ANS2 = zeros(1,length(X0));
    FZ = [];
    AZ = [];
    df = (f(x0 + h) - f(x0)) / h;
    for i = 1:length(X0);
        F = fzero(f,X0(i));
        if F > -x0 && F < x0,
            FZ(i) = F;
        endif
    endfor;
    AZ = uniquetol(FZ, 1e-4);
    size(AZ);
    plot(AZ, f(AZ),'ro');
##    plot(ANS2, f(ANS2), 'marker', 'o', 'color', 'r');
    hold off;
endfunction
