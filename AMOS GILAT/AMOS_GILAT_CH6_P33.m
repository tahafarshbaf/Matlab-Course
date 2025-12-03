% Calculate the overall score
clc, clear;


%% Get Scores
quiz = input("Enter quize values: ");
midterm = input("Enter midterm values: ");
final = input("Enter final values: ");


%% Quiz
quiz = sort(quiz);
quiz = quiz(2:end);
%[~, idx] = min(quiz);
%quiz(idx) = [];
quiz = mean(quiz) * 2.5;


%% Midterm
if mean(midterm) > final
    midterm = mean(midterm) * 0.35;
else
    midterm = sort(midterm);
    midterm = midterm(2:end);
    midterm = mean(midterm) * 0.35;
end

total = quiz + midterm + 0.4 * final;


%% Grade
if total >= 90
    grade = "A";
elseif total >= 80
    grade = "B";
elseif total >= 70
    grade = "C";
elseif total >= 60
    grade = "D";
else
    grade = "E";
end

disp(grade);
