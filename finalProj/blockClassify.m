function histStore = blockClassify(image, blockSize)
    [~, n] = size(image);
    imgblocks = im2col(image, [blockSize, blockSize], 'distinct'); %divide image up by columns. 
    %loop through successive cols of the blocks matrices returned by
    %im2col.   
    i = 1;
    for imcol = imgblocks
        i = i + 1;
    end
    j = i;
    i = 1;
    histStore = zeros(j, 255);
    %for imcol = imgblocks
    %    histStore(i, :) = getFeature(imcol);
    %    i = i + 1;
    %end
    for p = 1:j
       histStore(p, :) = getFeature(imgblocks(p, :)); 
    end
    %fprintf("i = %d, n = %d\n", i, n);
end

