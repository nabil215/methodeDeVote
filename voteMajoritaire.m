function resultat = voteMajoritaire(mat,n,m)
    vector = zeros(1,m);
    for i=1:n
        for j=1:m
            if mat(i,j)==1
                vector(j)=vector(j)+1;
            end                
        end
    end
    
    % trouver la décision 
    max=vector(1);
    incertidude = 0;
    decision = 1;
    for i=2:m
        if max<vector(i)
            max=vector(i);
            decision= i;           
            incertidude = 0;
        else
           if max == vector(i)
              incertidude = 1;
           end
        end
    end
    
    if incertidude == 0
        resultat = decision;        
    else
        
        resultat = m+1;
    end
    vector
end