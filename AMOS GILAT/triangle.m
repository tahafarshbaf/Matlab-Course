function [Area] = triangle(a,b,c)
%   Calculate the Area of triangle using heron's law
%   Area = sqrt(P(P-a)(P-b)(P-c))
%   P = (a+b+c)/2

arguments (Input)
    a {mustBePositive}
    b {mustBePositive}
    c {mustBePositive}
    
end

P = (a+b+c)/2;
Area = sqrt(P*(P-a)*(P-b)*(P-c));

end