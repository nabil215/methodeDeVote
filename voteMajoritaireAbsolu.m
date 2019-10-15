function resultat = voteMajoritaireAbsolu(mat,n,m)
    vector = zeros(1,m);
    for i=1:n
        for j=1:m
            if mat(i,j)==1
                vector(j)=vector(j)+1;
            end                
        end
    end
    
    % trouver la décision 
    max=0;
    deuxclasse = 0;
    decision = 0;
    for i=1:m
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
    
    if deuxclasse == 0 && max>n/2
        resultat = decision;        
    else
        
        resultat = m+1;
    end
    vector
end