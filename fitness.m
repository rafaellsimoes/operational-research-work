function fit = fitness (graph,vector)
  error  = 0;
  # 1 é vizinho
  for i = 1 : size(graph,1)
    for j = i+1: size(graph,1)
      if(graph(i,j) == 1 & vector(i) == vector(j))
        error = error +1;
       else
        error = error+0;
       endif
    endfor
  endfor
 return error;
endfunction
