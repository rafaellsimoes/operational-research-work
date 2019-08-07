function search = graph_search (graph,line,column)
  if(graph(line,column) == 1)
    return 1;
  else
    if(graph(line,column) == 0)
      return 0;
     else
       return -1;
     endif
  endif
endfunction
