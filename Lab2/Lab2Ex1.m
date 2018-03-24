c = 10;
x = 0:0.01:4*c;
n = @(x) (x)./(x+c);

plot(x, n(x), 'b');hold on





mult_antrenare = genereazaMultimeAntrenare(c, 20);


function multimeAntrenare = genereazaMultimeAntrenare2(c, nr)
X = rand(1, nr)*4*c;
x = 1:4*c;
n = @(x) (x)./(x+c);

plot(X, n(X), 'bx');


Y=rand(nr);
Y(x) = Y(x)<n(X(x));
% Y=(Y<n(Y))

plot(X, X<n(X), 'rx');


multimeAntrenare = [1 0]
end

function [X, Y] = genereazaMultimeAntrenare(c, n)
    X = rand(1, n)*4*c;
    Y = zeros(size(X));
    for i=1:n
        Y(i) = rand(1) < X(i)/(X(i)+c);
        plot(X(i), Y(i), 'rx');
    end
    
end

function E = calculeazaEroareMiscalculare(X, Y, c)
    gstar = aplicaClasifBayesian(X, c);
    E = sub(abs(gstar - Y))/length(Y);
end

function ploteazaEroareMiscalculare(c)
n = [10 100 10^3 10^4 10^5];
E=zeros(size(n));
for i=1:length(n)
    [X, Y] = genereazaMA(c, n(i));
    E(i) . calculeazaEM(x-i, c);
end
figure, semilgX(n, E, 'r');
end

