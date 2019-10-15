mat =[1 0 0;
    0 1 0;
    0 1 0;
    0 0 1 ];
%res=voteMajoritaire(mat,4,3)
ponderation = [95,25,25,99];
matpond=[1 1 2;
    3 1 4;
    1 1 1;
    1 5 1 ];
decision = sourcePonderemat(mat,4,3,matpond);