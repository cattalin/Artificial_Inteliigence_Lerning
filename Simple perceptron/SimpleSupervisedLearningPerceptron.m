net = newp([-2 2;-2 +2],1);

net.b{1} = [0];
w = [1 -0.8];
net.IW{1,1} = w;

p = [1; 2];
t = [1];

a = sim(net,p);

e = t-a;

dw = learnp(w,p,[],[],[],[],e,[],[],[],[],[]);

w = w + dw;