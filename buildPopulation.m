function matvec = buildPopulation(sword)
    space = 32;
    asciiArray = 97:122;
    theChars = [space asciiArray];
    matvec = cell(500, 1);
    for i = 1:500
       randWord = char(datasample(theChars, sword));
       matvec{i} = randWord;
    end
end 