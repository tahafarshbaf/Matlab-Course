x = [-3.5 -5 6.2 11 0 8.1 -9 0 3 -1 3 2.5];

P = [];   
N = [];   

for i = 1:length(x)
    if x(i) > 0
        P = [P x(i)];
    elseif x(i) < 0
        N = [N x(i)];
    end
end

disp('P = '), disp(P)
disp('N = '), disp(N)
