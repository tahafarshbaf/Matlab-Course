clc, clear

% Size of Matrix
n = input("Enter the size: ");
P = zeros(n,n);

for row = 1:n
    for col = 1:n
        P(row,col) = factorial(row+col-2) /...
        factorial(row-1) * factorial(col-1);
    end
end

disp(P);