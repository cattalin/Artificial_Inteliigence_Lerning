net = newp([-2 2;-2 +2],1);
net.trainParam.epochs = 4;

% training inputs and expected outputs
p = [[2; 2] [1; -2] [-2; 2] [-1; 1]];
t = [0 1 0 1];

net = train(net,p,t);

a = sim(net,p);

% just to check the errors are 0
error = [a(1)-t(1) a(2)-t(2) a(3)-t(3) a(4)-t(4)];

% to check the train function
net.trainFcn