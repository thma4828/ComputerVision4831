function mutant = mutateImage(child, imheight, imwidth)
    val = rand;
    if val <= 0.02
       
      i = randi([1, imheight],1);
      j = randi([1, imwidth],1);
      k = randi([1, 3], 1);
      child(i, j, k) = mod(child(i, j, k) + randi([-5, 5], 1, 1), 255);
      
    end
    mutant = child;
end