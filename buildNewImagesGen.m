function newgen = buildNewImagesGen(mpool, m, n, psize)
    p = length(mpool);
    newgen = cell(psize, 1);
    if(p > 0)
        for j = 1:psize
            parents = randi([1, p], 2);
            p1 = mpool{parents(1)};
            p2 = mpool{parents(2)};
            child = mateImages(p1, p2, m, n);
            mut_child = mutateImage(child);
            newgen{j} = mut_child;
        end
    end
end