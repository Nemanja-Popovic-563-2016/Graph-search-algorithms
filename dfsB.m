

%function f = dfsB(source, target, startNode, endNode)

q = [1, 1, 1, 2, 4, 3, 3, 3, 5, 7, 6, 6, 6, 8, 10, 9, 9, 9, 11, 13];  
t = [2, 3, 4, 3, 3, 5, 6, 7, 6, 6, 8, 9, 10, 9, 9, 11, 12, 13, 12, 12];
weight = [4, 10, 20, 4, 4, 4, 10,20, 4, 4, 4, 10, 20, 4, 4,4,10, 20, 4, 4];


source = q;%source;
target = t;%target;
startNode = 1;%startNode;
endNode = 7;%endNode;
stek = [startNode];
izlaz = [startNode];
tmpp = 0;
kontrola = 0;
con = 0;

 while(length(stek) > 0)
     
     %uzimanje cvora iz steka
     %odredjivanje njegove dece
     trenutniCvor = stek(1);
     deca = sort(target(find(source == trenutniCvor)));
     con = 0;
     
     for i = 1:length(deca)
         for j = 1:length(izlaz)
             
            if(izlaz(j) == deca(i))
                 con = con +1;
             end
         end
     end
     
     %da li je trenutni cvor kranji cvor
     if(trenutniCvor == endNode)
       izlaz = izlaz; 
       stek = [];
       kontrola = 1;
       break;
         
        
     elseif(con == length(deca))
         stek(stek==trenutniCvor) = [];
       
     
     else
         %provera da li se dete vec nalazi u izlazu
         for i = 1:length(deca)
             b = find(izlaz==deca(i));
             if(length(b) == 0)
                tmpp = deca(i);
                break;
             end
         end
         
         stek = [tmpp stek];
         izlaz = [izlaz tmpp];
         
         
         
     
     end
         
    
     
     
     
end
  
if(kontrola == 1)   
    izlaz   
 else
     disp('Ne postoji putanja izmedju ta dva cvora')
 end



