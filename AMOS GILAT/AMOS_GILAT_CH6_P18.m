clc;
clear;

deg = input('Enter angle in degrees: ');
x = deg * pi / 180;

Sn = 0;           % Initialize sum
term = x;         % First term a_0
n = 0;            % Term index
E = 1;            % Initial error (set > 0.000001)

while E > 1e-6
    Sn_prev = Sn;                     % Store previous sum
    Sn = Sn + term;                   % Add current term
    n = n + 1;                        % Increment term index
    term = ((-1)^n * x^(2*n + 1)) / factorial(2*n + 1);  % Next term
    E = abs((Sn - Sn_prev) / Sn_prev);  % Estimated error
end

fprintf('sin(%d°) ≈ %.10f\n', deg, Sn);
fprintf('MATLAB built-in sin(%d°) = %.10f\n', deg, sin(x));