% calculating the training heart rate (THR) for
% men and women
clc, clear;

% Inputs
gender = input("Enter gender: ","s");
age = input("Enter age: ");
rhr = input("Enter resting heart rate: ");
fit_lev = input("Enter fitness level: ","s");

% Determine fitness level
inten = ["low", "med", "high"];
inten_lev = [0.55 0.65 0.8];

% Calculate THR
if gender == "male"
    thr = ((220-age) - rhr) * inten_lev(inten==fit_lev) + rhr;
else 
    thr = ((206 - 0.88*age) - rhr) * inten_lev(inten==fit_lev) + rhr;
end

% Result
fprintf("Training Heart Rate is : %.2f\n", thr);