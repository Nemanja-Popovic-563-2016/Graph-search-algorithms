
function f = bfsA(source, target, startNode, endNode)




startNode = startNode;
endNode = endNode;
stek = [startNode];
izlaz = [];
tmpp = 0;
queue = [startNode];
con = 0;
source = source;
target = target;
kontrola = 0;


while(length(queue) > 0)
    %uzimanje elementa iz liste, pronalazenje njegove dece
    trenutniCvor = queue(1);
    queue(1) = [];
    %deca = sort(target(find(source == trenutniCvor)));
    deca = target(find(source == trenutniCvor));
    con = 0;
    
    %provera da li je trenutni cvor krajnji cvor
    if(trenutniCvor == endNode)
        izlaz = [izlaz trenutniCvor];
        queue = [];
        kontrola = 1;
        break;
    else
        %dodavanje dece u listu
        for i = 1:length(deca)
          
           queue = [queue deca(i)]; 
        end
        %provera da li se taj cvor vec nalazi u izlazu 
        for i = 1:length(izlaz)
           if(izlaz(i) == trenutniCvor)
               con = con + 1;
           end
        end
        
        if(con > 0)
            izlaz = [izlaz []];
        else
            izlaz = [izlaz trenutniCvor];
        end
    end    
    
end

if (kontrola == 1)
    izlaz
else
    disp('Nije pronadjena putanja izmedju dva cvora');
end    






