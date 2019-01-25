function newGen = buildNewGen(matingPool, rnum, sword, targetPhrase)
    psize = length(matingPool);%
    choice = [];
    for k = 1:psize
        if length(matingPool{k}) > 0
            choice = [choice k];
        end
    end
    newGen = cell(500, 1);%
    for j = 1:500
       parents = randsample(choice, 2);%
       p1 = matingPool{parents(1)};% 
       p2 = matingPool{parents(2)};
       child = mateParents(p1, p2, sword);%
       mutant = mutateChild(child, rnum);
       newGen{j} = mutant;
    end
end