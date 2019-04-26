function impool = imageMatingPool(p, d)
    d = cell2mat(d);
    bestFitness = min(d);
    meanFitness = mean(d);
    fprintf("best fitness (lower is better) was: %d", bestFitness);
    fprintf("\nmean fitness was: %d\n", meanFitness);
    fprintf("survival level: %f\n\n", (abs(bestFitness - meanFitness) / 2) + bestFitness);
    survivalLevel = (abs(bestFitness - meanFitness) / 2) + bestFitness;
    mcount = 0;
    for k = 1:length(p)
        dval = d(k);
        if dval <= survivalLevel
            mcount = mcount + 1;
        end
    end
    newcount = 1;
    impool = cell(mcount, 1);
    for j = 1:length(p)
        matrix = p{j};
        dval = d(j);
        if dval <= survivalLevel
            impool{newcount} = matrix;
            newcount = newcount + 1;
        end
    end
end