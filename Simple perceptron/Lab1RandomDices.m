% rng(0,'twister');%this makes the same random results

dice1 = randi([1 6],1,1000);
dice2 = randi([1 6],1,1000);

r_range = [min(dice1) max(dice1)];%double-check the interval

dices = dice1+dice2;

fprintf("simulating 2 zaruri dinalea bune. 1000 attempts...\n");
k=2;
while k <= 12
 times = sum(nnz(dices == k));
 fprintf("we got %d: %d times\n", k, times);
 k=k+1;
end

