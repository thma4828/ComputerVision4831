function difArray = getImageFitness(pop, m, n, t)
    target = rgb2gray(imread(t));
    difArray = cell(length(pop), 1);
    for j= 1:length(pop)
        matcurr = pop{j};
        difference = 0;
        for N = 1:n
           for M = 1:m
                diff = double(target(M, N)) - matcurr(M, N);
                difference = difference + abs(diff);
           end
        end
        difArray{j} = difference;
    end
end