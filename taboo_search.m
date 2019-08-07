function [sBest, vecFit] = taboo_search (nInteractions, nNeighbors, lenTabu, graph)
  sInitial = (size(graph,1));
  sInitial = random_colors(size(graph,1));
  ## começando com as solução
  s = sInitial;
  sBest = s;
  tabu_list = {};
  ## Iterações
  for i=1 : nInteractions
    bestV = random_colors(size(sBest,1));
    e1 = fitness(graph,bestV);
    for j =2: nNeighbors
      V = random_colors(size(sBest,1));
      e2 = fitness(graph,V);
      if(!(V == []) &  e2 < e1)
        bestV = V;
       endif
    endfor 
    s = bestV;
    e3 = fitness(graph,sBest);
    if(e2  < e3)
       sBest = bestV;
    endif
    tabu_list = bestV;
    if(size(tabu_list) > size(graph,1))
      
    
  endfor
  

  

endfunction
