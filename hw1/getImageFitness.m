function difArray = getImageFitness(pop, m, n, t)
    target = imread(t);
    difArray = cell(length(pop), 1);
    for j= 1:length(pop)
        matcurr = pop{j};
        difference = 0;
        for N = 1:n
           for M = 1:m
               for col = 1:3
                    diff = double(target(M, N, col)) - matcurr(M, N, col);
                    difference = difference + abs(diff);
           end
        end
        difArray{j} = difference;
    end
end