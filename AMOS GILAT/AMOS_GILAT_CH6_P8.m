a = zeros(4,3);

for row = 1:4
    for col = 1:3
        a(row,col) = (row+col)/col^row;
    end
end

disp(a);