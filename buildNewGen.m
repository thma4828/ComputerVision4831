function newGen = buildNewGen(matingPool, rnum)
    psize = length(matingPool);
    choice = 1:psize;
    newGen = [];
    for j = 1:500
       parents = randsample(choice, 2);
       p1 = matingPool(parents(1));
       p2 = matingPool(parents(2));
       child = mateParents(p1, p2);
       mutant = mutateChild(child, rnum);
       newGen = [newGen mutant];
    end
end