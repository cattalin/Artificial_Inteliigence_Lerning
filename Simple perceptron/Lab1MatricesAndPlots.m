m = zeros(2, 3);
n = ones (4);
a = [1 2 3 4]';
a = a .^ 2;
std(a);

x=-pi:0.1:pi;
y=sin(x);
subplot(2,2,1);
plot(x,y,'or');
xlabel('x');
ylabel('sin(x)'); 
title('Graficul functiei sin(x)');

subplot(2,2,4);
plot(y, x,'or');

xlabel('sin(x)');
ylabel('x'); 
title('Graficul functiei sin(x)');

