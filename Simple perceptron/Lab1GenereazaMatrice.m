function mat = Lab1GenereazaMatrice(n)
% mat = zeros(n);
% 
% diag = 1:1:min(n);
% mat(diag, diag) = 2;

C = zeros(n, 1);
C(n) = -1;
D = 2*eye(n);
E = [zeros(1, n); -eye(n-1) zeros(n-1, 1)];
F = [zeros(n-1, 1) -eye(n-1); zeros(1,n)];
B = D + E + F;
mat = [B C];
end