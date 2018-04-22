
function [P, T] = genereazaPuncteDeplasateFataDePrimaBisectoare(n, deplasare)

    P = rand(2,n)*2-1;
    T = zeros(1,length(P));

    ind1 = P(1, :) >= P(2, :);%red
    ind2 = ~ind1;%blue

    T(ind1) = 1;
    T(ind2) = -1;
    
    P(1, ind1) = P(1, ind1) + deplasare;
    P(2, ind1) = P(2, ind1) - deplasare;
    
    P(1, ind2) = P(1, ind2) - deplasare;
    P(2, ind2) = P(2, ind2) + deplasare;
    
end