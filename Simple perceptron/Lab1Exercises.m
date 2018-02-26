% exercise 1

x = -10:0.0001:10;
index = x<2;
f=zeros(size(x));
f(index) = 2*x(index) + 8;
index = x>=2;
f(index) = 3 * x(index).*x(index);

plot(x, f, 'ro');

matrice = Lab1GenereazaMatrice(10);


% % exercise 1
% 
% x = -10:0.0001:10;
% % x1 = x(1:120001);
% % x1 = -10:0.0001:2;
% 
% fx = func(x1);
% plot(x1, fx, 'r');hold on;
% x2=2:0.0001:10;
% f2 = 3*x2.*x2;%one by one multiplying
% plot(x2, fx, 'g');
% 
% function y = func(x)
% if ~isvector(x)
%     error('Input must be a vector')
% end
% if(x<2)
%     y = 2*x + 8;
% else
%     y = 3*x.*x;
% end
% end
% 
