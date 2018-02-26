n = 3;
% A = rand(n,n);
% B = rand(n,n);
A = [1 0 1; -1 3 1; 1 2 1];
B = [2 1 1; 0 -2 3; 0 0 -2];

tic
C = A*B;
toc
tic
C = multiply(A, B, n);
toc


function Prod = multiply(A, B, n)

Prod = zeros(n);
for i=1:n
    for j=1:n
        for z=1:n
            Prod(i,j) = Prod(i,j) + A(i,z)*B(z,j);
        end
    end
end
end
