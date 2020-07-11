
function f = BFSC(source, target, weight, startNode, endNode)



source = source;
target = target;
weight = weight;
startNode = startNode;
endNode = endNode;
izlaz = [];
conO = 0;
conI = 0;
ind = [];
kontrola = 0;
open = [startNode];
openCost = [];
tmp = [];


while(length(open) > 0)
    
    %definisanje trenutnog cvora i njegove dece
    if(length(open) == 1)
        trenutniCvor = open(1);
    else
        trenutniCvor = open(indMin(1));
    end
    deca = target(find(source == trenutniCvor));
    
    
    %da li je trenutni cvor zeljeni cvor
    if(trenutniCvor == endNode)
        
        izlaz = [izlaz trenutniCvor];
        izlaz = izlaz;
        open = [];
        kontrola = 1;
        break;
    else
        
        for i = 1 : length(deca)
            for j = 1 : length(open)
                
                if(open(j) == deca(i))
                    conO = conO + 1; 
                end
                
            end
            
            for z = 1 : length(izlaz)
                if(izlaz(z) == deca(i))
                    conI = conI + 1;
                end
            end
            
            if(conO == 0 && conI == 0)
                open = [open deca(i)];
            end
            
            
        end
        
        izlaz = [izlaz trenutniCvor];
        open(find(open == trenutniCvor)) = [];
        
       
        for i = 1 : length(open)
            tmp = find(target == open(i));
            %ind = [ind find(target == open(i))];
            ind = [ind tmp(1)];
            openCost=[openCost weight(ind(i))];
        end
        %indeks pod kojim se nalazi minimalna
        %vrednost za tezinu
        indMin = find(openCost == min(openCost));
        ind = [];
        openCost = [];
        conO = 0;
        conI = 0;
        tmp = [];
        
    end
    
end

if(kontrola == 1)
    izlaz
else
    'Ne postiji putanja izmedju ta dva cvora'
end

