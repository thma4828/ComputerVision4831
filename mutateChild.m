function mut_child = mutateChild(child, rnum)
    theChild = cell2mat(child);
    r = randi(100 + rnum, 1, 1);
    if r < 3
       nonce = randi([1, 18]);
       space = 32;
       asciiArray= 65:90;
       theChars = [space asciiArray];
       aChar = randsample(theChars, 1);
       theChild(nonce) = aChar;
    end
    mut_child = theChild;
end