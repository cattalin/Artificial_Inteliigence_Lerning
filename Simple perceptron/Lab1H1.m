% rng(0,'twister');%this makes the same random results

c = [0 0; 0 0; 0 0]; %init
c(1,:) = [0 0]; % whites
c(2,:) = [0 1]; % white/black
c(3,:) = [1 1]; % blacks

choice = randi([1 6], 1, 10)


c(choice)                 % maps the choice to the cartonas
cart = ceil(choice/2); % identifies the cartionas
face = mod(choice,2)+1;   % shows the fata of the cartonas fata/spate -> 1/2. 
                          % corresponds to the column of the matrix
                          % use ~mod(choice,2) for the other fata
%

results = zeros(length(choice));
for xi = 1:length(choice)
    c(cart(xi), face(xi));
    
end