function phrase = evolvePhrase(sword, targetPhrase)
    tic;
    Pop = buildPopulation(sword);
    Fit = calcFitness(Pop, targetPhrase, sword);
    Pool = getMatingPool(Pop, Fit);
    numgens = 0;
    while numgens < 200
       Pop = buildNewGen(Pool, numgens, sword, targetPhrase);
       Fit = calcFitness(Pop, targetPhrase, sword);
       Pool = getMatingPool(Pop, Fit);
       numgens = numgens + 1;
       if mod(numgens, 10) == 0
           [~, index] = max(cell2mat(Fit));
           fprintf("best string: %s\n", Pop{index});
           fprintf("generation: %d\n", numgens);
           fprintf("max fitness: %d\n", max(cell2mat(Fit)));
       end
    end
    [mf, index] = max(cell2mat(Fit));
    phrase = Pop{index};
    fprintf("best phrase was: %s\n", phrase);
    fprintf("best phrase fitness was: %d\n", mf);
    toc
end