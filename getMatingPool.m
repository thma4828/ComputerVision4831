function matingPool = getMatingPool(population, f_array)
    meanFitness = mean(f_array);
    maxFitness = max(f_array);
    minFitness = (min(f_array));
    survivalLevel = meanFitness / 2;
    matingPool = [];
    for i=1:200
        if(f_array(i) >= survivalLevel)
            matingPool = [matingPool population(i)];
        end
    end
    
end 