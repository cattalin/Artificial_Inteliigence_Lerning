P = 1.0;
T = 0.5;

net = newlin( [-2 2],1);
net.trainParam.goal= 0.1;
[net, tr] = train(net,P,T); 

A = sim(net, P);
err = T - sim(net,P);
