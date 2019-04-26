function dups = simpleColorDuplicateFinder(image, pool, n, tau) %image to find duplicates of, pool of images, size of pool
    mainHist = wholeColorFeature(image);  
    dups = cell(n, 1);% tau is threshold for duplicate / cluster. 
    m = 1;
    for i = 1:n                              %note: by changing tau we can find clusters. 
       im_i = pool{i};
       imHist = wholeColorFeature(im_i);
       d = getDiffHist(mainHist, imHist);
       if d < tau
          dups{m} = im_i;
          m = m + 1;
       end
    end
end

