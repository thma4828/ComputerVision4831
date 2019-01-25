function [p, c] = fixPopulation(pop, sword)
    c = 0
    for i=1:length(pop)
        member = pop{i};
        if length(member) + 1 < sword
            c = c + 1;
        end
        pop{i} = member;
    end
    p = pop;
end