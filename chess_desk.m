function retval = chess_desk (n,m)
    A = false(n,m);
    A(1:2:n, 1:2:m) = true;
    A(2:2:n, 2:2:m) = true
endfunction
