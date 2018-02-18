net = newp([-2 2;-2 +2],1);

% init the bias and wights
b = 0;
net.b{1} = b;
w = [0 0];
net.IW{1,1} = w;

% training inputs and expected outputs
p = [[2; 2] [1; -2] [-2; 2] [-1; 1]];
t = [0 1 0 1];

% parametrize by the index i to find the error at each step
inputs = 4;

for i = 1:inputs
    a = hardlim(w*p(:,i) + b);

    e = t(i)-a;

    % in this case, this is equivalent to e*p1
    dw = learnp(w,p(:,i),[],[],[],[],e,[],[],[],[],[]);

    w = w + dw;
    b = b + e;
end



