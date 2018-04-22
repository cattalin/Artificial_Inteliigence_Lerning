

% 
% X = [[0,0]', [0,0.5]', [0,1]', [0.5,0]',[0.5,0.5]', [0.5,1]', [1,0]', [1,0.5]']
% T = [1 1 1 1 -1 -1 -1 -1]
% 
% 
% clf;hold on;
% ind1 = find(T==1);
% plot(X(1, ind1), X(2, ind1), 'rx');
% ind2 = find(T==-1);
% plot(X(1, ind2), X(2, ind2), 'go');
% axis([-0.2 1.2 -0.2 1.2]);
% 
% [W, b, Err] = algoritmRosenblattOnline(X, T, 1000);
% plotpc(W', b);


% figure;
P = rand(2,100)*2-1;
clf;hold on;
indexClasa1 = P(1, :) >= P(2, :);
indexClasa2 = ~indexClasa1;
plot(P(1, indexClasa1), P(2, indexClasa1), 'go');
plot(P(1, indexClasa2), P(2, indexClasa2), 'bx');

[W, b, Err] = algoritmRosenblattOnline(P, indexClasa1, 1000);
plotpc(W', b);




