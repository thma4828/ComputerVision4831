function mutant = mutateImage(child, imheight, imwidth)
    val = rand;
    mutation_range = [-20, 20];
    if val <= 0.01
      for m = 1:10
          i = randi([1, imheight],1);
          j = randi([1, imwidth],1);
          k = randi([1, 3], 1);
          child(i, j, k) = mod(child(i, j, k) + randi(mutation_range, 1, 1), 255);
      end
    end
    mutant = child;
end