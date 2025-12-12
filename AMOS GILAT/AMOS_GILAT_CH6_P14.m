format long;

for m = [100 100000 1000000]
    P = 1;
    for n = 1:m
        P = P * ((2*n)^2)/((2*n)^2 - 1);
    end
    result = 2 * P;
    fprintf('m = %d --> %.15f \n', m, result);
end
