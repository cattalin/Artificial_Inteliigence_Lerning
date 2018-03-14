function Err = CalculeazaEroare(P, S)
    u = S(2,:);
    uPrezis = polyval(P, S(1,:));
    Err = sum((u-uPrezis).^2);
end
