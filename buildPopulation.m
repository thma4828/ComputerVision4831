function population = buildPopulation()
    space = 32;
    asciiArray1 = 65:90;
    asciiArray2 = 97:122;
    asciiArray = [asciiArray1 asciiArray2];
    theChars = [space asciiArray];
    matvec = [];
    for i = 1:600
       randWord = cellstr(char(randsample(theChars, 50))); 
       matvec = [matvec randWord];
    end
    population = matvec;
end 