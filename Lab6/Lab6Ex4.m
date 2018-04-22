clf; hold on;


m         = [10, 50, 100, 1000, 500];
deplasare = [0.5, 0.3, 0.1, 0.01, -0.1, -0.3];


for i = 1:length(m)
    
    [P, T] = genereazaPuncteDeplasateFataDePrimaBisectoare(m(i), deplasare(i));
    [W, b, Err] = algoritmRosenblattOnline(P, T, 1000);
    

    ind1 = find(T==1);
    ind2 = find(T==-1);
    
    subplot(2,3,i); hold on;
    
    title(strcat('Epochs passed: ', string(length(Err))))
    plot(P(1, ind1), P(2, ind1), 'ro');
    plot(P(1, ind2), P(2, ind2), 'bx');
    plotpc(W', b);
end

