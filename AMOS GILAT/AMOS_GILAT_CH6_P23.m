clc; clear;

timePeriod = lower(input('Enter time call was made (day/evening/night): ', 's'));
duration = input('Enter duration of call in minutes: ');
duration = ceil(duration);

switch timePeriod
    case 'day'
        r1 = 0.10;    % 1-10
        base10 = 1.00; add10 = 0.08;   % 10-30
        base30 = 2.60; add30 = 0.06;   % >30

    case 'evening'
        r1 = 0.07;
        base10 = 0.70; add10 = 0.05;
        base30 = 1.70; add30 = 0.04;

    case 'night'
        r1 = 0.04;
        base10 = 0.40; add10 = 0.03;
        base30 = 1.00; add30 = 0.02;

    otherwise
        error('Invalid time period');
end


if duration <= 10
    cost = duration * r1;

elseif duration <= 30
    cost = base10 + (duration - 10) * add10;

else
    cost = base30 + (duration - 30) * add30;
end

fprintf('Cost of the call: $%.2f\n', cost);