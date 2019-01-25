function child = mateParents(p1, p2, sword)
    child = [];
    len = min([length(p1), length(p2)]);
    space = 32;
    asciiArray = 97:122;
    theChars = [space asciiArray];
    while len < sword
        p1 = [p1 char(datasample(theChars, (sword - len + 1)))];
        p2 = [p2 char(datasample(theChars, (sword - len + 1)))];
        len = min([length(p1), length(p2)]);
    end
    for i = 1:sword
        r = randi([-10 10], 1, 1);
        if(r >= 0)
            child = [child p1(i)];
        else
            child = [child p2(i)];
        end
    end
    child = cellstr(child);
end