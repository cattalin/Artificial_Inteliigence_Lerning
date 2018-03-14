function P = GasestePolinomOptim(S, N)
    P = polyfit(S(1,:), S(2,:), N);
end