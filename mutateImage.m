function mutant = mutateImage(child)
    val = rand;
    if val <= 0.01
       for c= 1:5
           i = randi([1, 10],1);
           j = randi([1, 10],1);
           child(i, j) = mod(child(i, j) + randi([-5, 5], 1, 1), 255);
       end
    end
    mutant = child;
end