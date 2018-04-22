clear all, close all


X = [0 0 0 0.5 0.5 0.5 1 1 -50;0 0.5 1 0 0.5 1 0 0.5 90];
T = [1 1 1 1 -1 -1 -1 -1 1];

%reprezentare grafica a datelor
figure(1), hold on;
ind1 = find(T==1);
ind2 = find(T==-1);
plot(X(1, ind1), X(2, ind1), 'rx');
plot(X(1, ind2), X(2, ind2), 'go');
% axis([-2 2 -2 2]);


%creeaza perceptron
%modifica functia de transfer – din hardlim in hardlims
%configureaza perceptron pe baza datelor de intrare si iesire
net = perceptron;
net.layers{1}.transferFcn = 'hardlims';
net = configure(net,X,T);
% view(net);


%afiseaza proprietatile perceptronului legate de vectorul de ponderi + bias
disp('Proprietati legate de vectorul de ponderi:');
disp(net.inputWeights{1});
disp('Proprietati legate de bias:');
disp(net.biases{1});

net.inputWeights{1}.learnFcn = 'learnpn';
net.biases{1}.learnFcn = 'learnpn';

disp('Ponderile + bias initial');
disp(net.IW{1}), disp(net.b{1});


%initializeaza parametri retelei
%antreneaza reteaua
net = init(net);
net.plotFcns = [net.plotFcns {'plotwb'}];

% net.trainParam.epochs = 1;
% for i = 1:15
%    [net,antrenare] = train(net,X, T);
%    plotpc(net.IW{1},net.b{1})
%    pause(0.1)
% end

net.trainParam.epochs = 200;
[net,antrenare] = train(net,X,T);
% % disp(getwb(net))
% % plotwb(net)

figure(1);
%ploteaza dreapta de separare
plotpc(net.IW{1},net.b{1})
title('Reprezentarea grafica a exemplelor de antrenare si a dreptei de separare');
%simuleaza reteaua pentru datele de intrare
etichetePrezise = sim(net,X);
isequal(etichetePrezise,T)

disp('Ponderile + bias final');
disp(net.IW{1}), disp(net.b{1});


X = [0 0 0 0.5 0.5 0.5 1 1 -50;0 0.5 1 0 0.5 1 0 0.5 90];
T = [1 1 1 1 -1 -1 -1 -1 1];

figure;hold on;

ind1 = find(T==1);
ind2 = find(T==-1);
plot(X(1, ind1), X(2, ind1), 'rx');
plot(X(1, ind2), X(2, ind2), 'go');
% axis([-2 2 -2 2]);

[W, b, Err] = algoritmRosenblattOnline(X, T, 1000);
plotpc(W', b);

disp('Ponderile algoritm RosenblattOnline')
disp(W'), disp(b);


% function a = helper (a)
% try
%   wr = evalin('base','weightRecord');
% catch
%   wr = {};
% end
% wr{end+1} = calcLib.getwb(calcNet);
% assignin('base','weightRecord',wr);
% end
