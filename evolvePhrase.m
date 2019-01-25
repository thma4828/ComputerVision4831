function phrase = evolvePhrase()
    tic
    Pop = buildPopulation();
    Fit = calcFitness(Pop);
    Pool = getMatingPool(Pop, Fit);
    numgens = 0;
    while numgens < 30
       Pop = buildNewGen(Pool, numgens);
       Fit = calcFitness(Pop);
       Pool = getMatingPool(Pop, Fit);
       numgens = numgens + 1;
       if mod(numgens, 10) == 0
           [~, index] = max(Fit);
           fprintf("best string: %s\n", char(cell2mat(Pop(index))));
           fprintf("generation: %d\n", numgens);
           fprintf("max fitness: %d\n", max(Fit));
       end
    end
    [mf, index] = max(Fit);
    phrase = Pop(index);
    fprintf("best phrase was: %s\n", phrase{1});
    fprintf("best phrase fitness was: %d\n", mf);
    toc
end