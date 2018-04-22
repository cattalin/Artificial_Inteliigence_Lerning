function [W, b, Err] = algoritmRosenblattOnline(X, T, nrMaximEpoci)
d = size(X, 1);
n = size(X, 2);
Err = zeros(n);

W = rand(d,1);
b = 0;

epocaCurenta = 1;
while(epocaCurenta <= nrMaximEpoci)
    nrExempleGresite = 0;
    for i = 1:n
        y = hardlims(W'*X(:,i) + b);
        if y ~= T(i)
            W = W + X(:,i)*T(i);
            b = b + T(i);
            nrExempleGresite = nrExempleGresite + 1;
        end
    end
    Err(epocaCurenta) = nrExempleGresite/n;
    epocaCurenta = epocaCurenta + 1;
    
    if nrExempleGresite == 0
        Err(epocaCurenta:end) = [];
        return;
    end
end


end
