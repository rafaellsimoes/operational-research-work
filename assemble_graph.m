function graph = assemble_graph (nodes)
  graph = zeros(nodes,nodes);
  for i =1: nodes
    for j=1 : nodes
      if( i == j)
        graph(i,j) = 0;
       else
        graph(i,j) = input([num2str(i) , '-->', num2str(j), ':']);
       endif
    endfor
  endfor

endfunction
