% Calculating BMI

h = input("Enter your height: ");
w = input("Enter your weight: ");

bmi = 703 * h / w^2;
bmi = round(bmi,1);

if bmi<18.5
    fprintf("your value BMI is %.1f which calssifies you as Underweighted",bmi);
elseif bmi>=18.5 && bmi<=24.9
    fprintf("your value BMI is %.1f which calssifies you as Normal",bmi);
elseif bmi>=25 && bmi<=29.9
    fprintf("your value BMI is %.1f which calssifies you as Overweight",bmi);
else 
    fprintf("your value BMI is %.1f which calssifies you as Obses",bmi);
end