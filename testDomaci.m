%Prvi nacin definisanja
%Ulazni parmetri su sifrovani na sledeci nacin
%S -> 1
%M -> 2
%F -> 3 
%W -> 4
%N -> 5
%G -> 6
%X -> 7
%O -> 8
%H -> 9
%Y -> 10
%P -> 11
%I -> 12
%Z -> 13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%q = [1, 1, 1, 2, 3, 4, 4, 4, 5, 6, 7, 7, 7, 8, 9, 10, 10, 10, 11, 12];
%t = [2, 3, 4, 4, 4, 5, 6, 7, 7, 7, 8, 9, 10, 10, 10, 11, 12, 13, 13, 13];
%weight = [4, 20, 10, 4, 4, 4, 20, 10, 4, 4, 4, 20, 10, 4, 4, 4, 20, 10, 4, 4];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Drugi nacin definisanja

%S -> 1
%M -> 2
%W -> 3 
%F -> 4
%N -> 5
%X -> 6
%G -> 7
%O -> 8
%Y -> 9
%H -> 10
%P -> 11
%Z -> 12
%I -> 13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



q = [1, 1, 1, 2, 4, 3, 3, 3, 5, 7, 6, 6, 6, 8, 10, 9, 9, 9, 11, 13];  
t = [2, 3, 4, 3, 3, 5, 6, 7, 6, 6, 8, 9, 10, 9, 9, 11, 12, 13, 12, 12];
weight = [4, 10, 20, 4, 4, 4, 10,20, 4, 4, 4, 10, 20, 4, 4,4,10, 20, 4, 4];




g = digraph(q,t, weight);

plot(g,'EdgeLabel',g.Edges.Weight)

%Za prvi nacin ovako
%bfsA(q,t,1,6)
%dfsB(q, t, 1, 6)
%BFSC(q,t,weight,1,6)
%%%%%%%%%%%%%%%%%%%%%

%Za drugi nacin (ispravljen)

%bfsA(q,t,1,7)
dfsB(q, t, 1, 7)
%BFSC(q,t,weight,1,7)
