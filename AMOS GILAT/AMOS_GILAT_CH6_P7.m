n = input("Enter N: ");

f = zeros(1,n);
f(1) = 0;
f(2) = 1;

for m = 3:n
    f(m) = f(m-1) + f(m-2);
end

disp(f);