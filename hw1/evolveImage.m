function [img, fitmembers, fitscores] = evolveImage(m, n, source_img, pop_size, rounds)
    tic;
    gen = generateImages1(pop_size, m, n); %generate initial batch of images
    darr = getImageFitness(gen, m, n, source_img); %get the fitness of this generation and store it in darr. 
    d = cell2mat(darr);
    mpool = imageMatingPool(gen, darr); %get the fittest in the first generation. 
    numgens = 0; %number of generations
    fitmembers = cell(9, 1);
    fitscores = cell(9, 1);
    fc = 1;
    fprintf("initial population best fitness member: %d\n\n", min(d));
    fid = fopen("generationLog.txt", 'wt');
    while numgens < rounds
       fprintf("at %d / %d rounds.\n", numgens, rounds);
       gen = buildNewImagesGen(mpool, m, n, pop_size); %mating method is better now. 
       darr = getImageFitness(gen, m, n, source_img); %fitness should be accurate... 
       d = cell2mat(darr);
       mpool = imageMatingPool(gen, darr); 
       numgens = numgens + 1;
       if mod(numgens, 5) == 0
          [score, index] = min(cell2mat(darr));
          tval = gen{index};
          if fc <= 9
              fitmembers{fc} = tval;
              fitscores{fc} = score;
              fc = fc + 1;
          end
       end
       bf = min(cell2mat(darr));
       wf = max(cell2mat(darr));
       fprintf(fid, 'ROUND {%d}\nlowest pixel loss (best fit): %d\nhighest pixel loss (worst fit): %d\ngenetic diversity: %d\n\n',numgens, bf, wf, abs(bf - wf));  
    end
    d = cell2mat(darr);
    [~, index] = min(d);
    img = gen{index};
    viewimg = cast(img, 'uint8');
    toc
    imshow(viewimg);
    imsave;
    fd = cell2mat(fitscores);
    xdata = [5 10 15 20 25 30 35 40 45];
    figure
    plot(xdata, fd)
end