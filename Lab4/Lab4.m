n = 10;
sigma = 0.2;
f = @(x) sin(2*pi*x);

clf;

hold on;
S = GenereazaMultimeAntrenare(n, sigma, f);


colors = {'b', 'm', 'r', 'k', 'y', 'c', 'g', 'b', 'r'};
for degree = 0:8
    P = GasestePolinomOptim(S, degree);

    
    subplot(3, 3, degree+1);
    PloteazaMultimeAntrenare(S);hold on;
    PloteazaPolinom(P, colors{degree+1});hold on;
    E(degree+1) = CalculeazaEroare(P, S);
    ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
%     axis([0 1 -2 2]);

%     plot(ES, 'r');
end




