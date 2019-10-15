function resultat = voteMajoritaire(mat,n,m,matpond)
 
somme=zeros(1,n)
for i=1:n
    for j=1:m
        somme(i)=somme(i)+matpond(i,j);
    end
end
matpondnorm=matpond
for i=1:n
    for j=1:m
       matpondnorm(i,j)=matpondnorm(i,j)/somme(i);
    end
end
matpondnorm

vector=zeros(1,m);

for i=1:n
    for j=1:m
        if (mat(i,j)~=0)
            vector(j)=vector(j)+mat(i,j)*matpondnorm(i,j);
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
    vector
end



       
