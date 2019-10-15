function resultat = voteMajoritaire(mat,n,m,vPond)

    % normalisation de pondération
    somme=0;
    for i=1:n
        somme = vPond(i)+ somme;        
    end
    for i=1:n
        vPond(i)=vPond(i)/somme;
    end
    
    %****************pour normaliser **************
     
    vector = zeros(1,m);
    for i=1:n
        for j=1:m
            if mat(i,j)~=0
                vector(j)=mat(i,j)*vPond(i);
            end                
        end
    end
    
    % trouver la décision 
    max=vector(1);
    deuxclasse = 0;
    decision = 1;
    for i=2:m
        if max<vector(i)
            max=vector(i);
            decision= i;           
            deuxclasse = 0;
        else
           if max == vector(i)
              deuxclasse = 1;
           end
        end
    end
    
    if deuxclasse == 0
        resultat = decision;        
    else
        
        resultat = m+1;
    end
    vector;
    vPond
end