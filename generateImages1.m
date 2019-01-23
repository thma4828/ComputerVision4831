function imgPop = generateImages1(popsize, imwidth, imheight)
    imgPop = cell(popsize, 1);
    for j = 1:popsize
       m = randi(255, imwidth);
       imgPop{j} = m;
    end
end