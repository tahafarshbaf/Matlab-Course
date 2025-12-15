x = [-3.5 -5 6.2 11 0 8.1 -9 0 3 -1 3 2.5];

P = zeros(1, length(x));
N = zeros(1, length(x));

ip = 0;
in = 0;

for i = 1:length(x)
    if x(i) > 0
        ip = ip + 1;
        P(ip) = x(i);
    elseif x(i) < 0
        in = in + 1;
        N(in) = x(i);
    end
end

P = P(1:ip);
N = N(1:in);

disp('P = '), disp(P)
disp('N = '), disp(N)
