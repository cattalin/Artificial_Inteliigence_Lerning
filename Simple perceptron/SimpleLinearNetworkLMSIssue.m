P = [-2 -1 2 1];%there can't be found weights to solve this
t = [0 1 1 0];
net = newlin( [-2 2],1);
net.trainParam.goal= 0.1;
[net, tr] = train(net,P,t); 

A = sim(net, P);
err = t - sim(net,P);
