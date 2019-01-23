function child = mateParents(p1cell, p2cell)
    p1 = cell2mat(p1cell);
    p2 = cell2mat(p2cell);
    child = [];
    for i = 1:18
        r = randi([-10 10], 1, 1);
        if(r >= 0)
            child = [child p1(i)];
        else
            child = [child p2(i)];
        end
    end
    child = cellstr(child);
end