clc, clear

n = 1;

while true
    n = n + 1;
    if (mod(n,2)==1 && mod(n,11)==0 && sqrt(n)>132)
        break;
    end
end

fprintf("The number is :%d", n);