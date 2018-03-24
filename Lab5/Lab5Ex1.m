a = -5; b = 5;
x   = a:0.01:b;

clf;

% d
f = @(x) hardlim(x);
subplot(2,2,1);
plot(x, f(x), 'r','linewidth',2);hold on
title('Hardlim');
% axis([0 inf -1 1]);

f = @(x) logsig(x);
subplot(2,2,2);
plot(x, f(x), 'r','linewidth',2);hold on
title('Logsig');

f = @(x) poslin(x);
subplot(2,2,3);
plot(x, f(x), 'r','linewidth',2);hold on
title('RELU - Poslin');
