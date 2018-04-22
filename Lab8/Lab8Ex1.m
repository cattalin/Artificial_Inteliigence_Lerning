
P=[-2 -2 -1 -1 0 0 0 0 1 1 2 2 3 3 3 3 4 4 5 5;
 2 3 1 4 0 1 2 3 0 1 1 2 -1 0 1 2 -2 1 -1 0];


% 1)
T = [-1 -1 -1 -1 -1 -1 -1 -1 1 -1 1 -1 1 1 1 1 1 1 1 1];
ind1 = find(T==1);
 hold on;
plot(P(1, ind1), P(2, ind1), 'or');
ind2 = find(T==-1);
plot(P(1, ind2), P(2, ind2), 'xg');
axis([-5 5 -5 5])

% 2)
X = [ones(1, size(P, 2)); P];
d=T';
beta = (X*X')\X*d;
figure(gcf)
plotpc( beta(2:3)', beta(1))

% P = [-2 -2 -1 -1 0 0 0 0 1 1 2 2 3 3 3 3 4 4 5 5;
%  2 3 1 4 0 1 2 3 0 1 1 2 -1 0 1 2 -2 1 -1 0;
%  -1 -1 -1 -1 -1 -1 -1 -1 1 -1 1 -1 1 1 1 1 1 1 1 1];
% figure;
plot3(P(1,ind1),P(2,ind1),T(ind1),'sr');hold on;
plot3(P(1,ind2),P(2,ind2),T(ind2),'sg');hold on;
[x y] = meshgrid(-5:0.5:5);

z = beta(1) + beta(2)*x + beta(3)*y;
figure(gcf),mesh(x,y,z);

% 3 - 4)
net = perceptron;
net.layers{1}.transferFcn = 'purelin';
net = configure(net, P, T);
net.biases{1}.learnFcn = 'learnwh'
net.inputWeights{1}.learnFcn = 'learnwh';
net.trainFcn = 'trainb';
net.trainParam.epochs = 1000;
net.trainParam.lr = 0.005;

% net = train(net, P, T)

% 5)
wstar = (P*P')\P*T'
net.biasConnect = 0;
net = train(net, P, T);

% 6)
[X, Y] = meshgrid(-0.7:0.01:0.7);
J = zeros(size(X));

for i = 1:size(X, 1)
    for j = 1:size(X, 2)
        J(i, j) = 0.5*sum(([X(i, j) Y(i, j)]*P - T).^2);
    end
end

figure, surf(X, Y, J)



