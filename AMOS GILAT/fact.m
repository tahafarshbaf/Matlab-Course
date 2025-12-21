function [y] = fact(x)

arguments (Input)
    x {mustBeGreaterThanOrEqual(x,-1) mustBeInteger}
end

y = 1;

if x
    for k=2:x
        y = y*k;
    end
end

end