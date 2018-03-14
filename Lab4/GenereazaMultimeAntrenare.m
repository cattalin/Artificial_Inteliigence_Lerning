function S = GenereazaMultimeAntrenare(n, sigma, f)
x = sort(rand(1, n));
noise = randn(1,n)*sigma;

u = f(x) +  noise;

% plot(x, f(x), 'bo');
S = [x;u];
end