function matingPool = getMatingPool(population, f_array)
    mat1 = cell2mat(f_array);
    meanFitness = mean(mat1);
    maxFitness = max(mat1);
    minFitness = (min(mat1));
    survivalLevel = meanFitness / 2;
    matingPool = cell(500, 1);
    for i=1:500
        if(f_array{i} >= survivalLevel)
            matingPool{i} = population{i};
        end
    end
    
end 