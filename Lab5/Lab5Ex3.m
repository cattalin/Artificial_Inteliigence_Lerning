P = rand(2,1000)*2-1;

clf;hold on;
indexClasa1 = P(1, :) >= P(2, :);
indexClasa2 = ~indexClasa1;
plot(P(1, indexClasa1), P(2, indexClasa1), 'go');
plot(P(1, indexClasa2), P(2, indexClasa2), 'bx');
plot([-1, 1], [-1, 1], 'r');


net = perceptron;
net = configure(net, [0; 0], 0);
net.IW{1} = [1 -1];
net.b{1}  = 0;

etichetePrezise = sim(net, P);
isequal(etichetePrezise, indexClasa1)

disp('training a network')
net1 = perceptron;
net1 = configure(net, [0; 0], 0);
net1 = train(net1, P, indexClasa1);

etichetePrezise = sim(net1, P);
isequal(etichetePrezise, indexClasa1)
net1.IW{1}


