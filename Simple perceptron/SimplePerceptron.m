net = newp([-2 2;-2 +2],1);
net.IW{1,1}= [-1 1];
net.b{1} = [1];

p1 = [1;1];
a1 = sim(net, p1)

p2 = [1;-1]
a2 = sim(net,p2)

p3 = {[1;1] [1;-1]};
a3 = sim(net,p3)

p4 = [-1;-1]
a4 = sim(net,p2)

net = init(net);%this reinits the weights and biases

net.IW{1,1} = [3,4];
net.b{1} = 5;

net.inputweights{1,1}.initFcn = 'rands';%this modifies the way init restores values(to random)
net.biases{1}.initFcn = 'rands';
net = init(net);