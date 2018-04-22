
clf; hold on;

X = [[0,0]', [0,0.5]', [0,1]', [0.5,0]',[0.5,0.5]', [0.5,1]', [1,0]', [1,0.5]'];
T = [1 1 1 1 -1 -1 -1 -1];


ind1 = find(T==1);
ind2 = find(T==-1);

plot(X(1, ind1), X(2, ind1), 'rx');
plot(X(1, ind2), X(2, ind2), 'go');
axis([-0.2 1.2 -0.2 1.2]);

[W, b, Err] = algoritmRosenblattOnline(X, T, 1000);
plotpc(W', b);





