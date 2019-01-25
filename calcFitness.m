function fitarr = calcFitness(population, targetPhrase, sword)
    fitarr = cell(length(population), 1);
    for i = 1:length(population)
        word = population{i};
        fitness = 0;
        len = min([length(word), sword]);
        for j = 1:len
            %fprintf("j: %d\n t(j): %c\n w(j): %c\n", j, targetPhrase(j), word(j));
            if targetPhrase(j) == word(j)
                fitness = fitness + 1;
            end
        end
        fitness = fitness / 18;  
        fitarr{i} = fitness;
    end 
end    