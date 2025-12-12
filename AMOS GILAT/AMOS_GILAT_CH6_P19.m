clc;
clear;

for n = 1:1000
    S = n * (n + 1) / 2;  % Sum of first n integers
    if S >= 100 && S <= 999
        digits = mod(floor(S ./ [100, 10, 1]), 10);  % Extract hundreds, tens, units
        if digits(1) == digits(2) && digits(2) == digits(3)
            fprintf('n = %d\n', n);
            fprintf('Sum = %d\n', S);
            break;
        end
    end
end
