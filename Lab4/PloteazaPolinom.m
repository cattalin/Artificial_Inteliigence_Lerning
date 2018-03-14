function PloteazaPolinom(P, color)
    deg = 0:0.01:1;
    fOpt = polyval(P, deg);
    plot(deg, fOpt, color);
end