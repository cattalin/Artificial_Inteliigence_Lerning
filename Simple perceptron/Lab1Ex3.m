A = [1 2 3 4; 5 6 7 8; 9 0 1 2];
% adunaElemente(rand(10, 20))
adunaElemente(A)

ex2_b()

function suma = adunaElemente(A)
minA = min(A(:));
suma = 0;
for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j) == minA
            return;
        else
            suma = suma+ A(i,j);
        end
    end
end
end

function suma = adunaElementeRepede(A)
A = A';
v=A(:);
[val, idx] = min(A(:));
suma = sum(v(1:idx-1));
end



function ex2_b
    n = [10 100 1000 5000];
    timp = zeros(size(n));
    for i=1:length(n)
        A = rand(n(i));
        tic, s = adunaElementeRepede(A);
        timp(i) = toc;
    end
    timp
end