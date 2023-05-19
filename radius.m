function retval = radius (n, r)
    if nargin < 2, # nargin количество входных переменных
		    error("Количество аргументов < 2");
	  end;
    
    if n < r, 
		    A = true(n,n);
	  end;
    
    A = false(n,n);
    RND = round(n/2)
    PART = n/2
    
    for i = RND - r - 1:RND + r + 1,
      for j = RND - r - 1:RND + r + 1,
        if mod(n, 2) == 1
          if (i - RND) * (i - RND) + (j - RND) * (j - RND) <= r * r,
            A(i , j ) = true;
          endif
        else
          if (i - RND) * (i - RND) + (j - RND) * (j - RND) <= r * r,
            A(i, j) = true;
            A(i + 1, j + 1) = true;
            A(i + 1, j) = true;
            A(i, j + 1) = true;
          endif
        endif
      endfor
    endfor
    A
endfunction
