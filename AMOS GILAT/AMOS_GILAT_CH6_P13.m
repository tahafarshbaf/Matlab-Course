format long;

for m = [5 10 20]
    S = 0;
    for n = 0:m
        S = S + ((-1/3)^n)/(2*n + 1);
    end
    result = sqrt(12)*S;
    fprintf('m = %d --> %.15f (error = %.3e)\n', m, result, abs(pi - result));
end
