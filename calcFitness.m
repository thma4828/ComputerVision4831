function fitarr = calcFitness(population)
    fitarr = [];
    targetPhrase = ['T','o',' ','b','e', ' ', 'o', 'r', ' ', 'n','o','t', ' ', 't','o', ' ', 'b', 'e'];
    for i = 1:length(population)
        word = cell2mat(population(i));
        fitness = 0;
        for j = 1:18
            if(targetPhrase(j) == word(j))
                fitness = fitness + 1;
            end
        end
        fitness = fitness / 18;  
        fitarr = [fitarr fitness];     
    end 
end    