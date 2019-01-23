function img = evolveImage(m, n, source_img, pop_size, rounds)
    gen = generateImages1(pop_size, m, n); %generate initial batch of images
    darr = getImageFitness(gen, m, n, source_img); %get the fitness of this generation and store it in darr. 
    d = cell2mat(darr);
    mpool = imageMatingPool(gen, darr); %get the fittest in the first generation. 
    numgens = 0; %number of generations
    fprintf("initial population best fitness member: %d\n\n", min(d));
    while numgens < rounds
       fprintf("at %d / %d rounds.\n", numgens, rounds);
       gen = buildNewImagesGen(mpool, m, n, pop_size); %mating method is better now. 
       darr = getImageFitness(gen, m, n, source_img); %fitness should be accurate... 
       d = cell2mat(darr);
       mpool = imageMatingPool(gen, darr); 
       numgens = numgens + 1;
       if mod(numgens, 10) == 0
          [~, index] = min(cell2mat(darr));
          tval = gen{index};
          tval;
      end
    end
    d = cell2mat(darr);
    [~, index] = min(d);
    img = gen{index};
    viewimg = cast(img, 'uint8');
    imshow(viewimg);
end