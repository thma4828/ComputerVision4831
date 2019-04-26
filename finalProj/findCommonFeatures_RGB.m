function commonRGB = findCommonFeatures_RGB(image, imagePool, b, n) %b is blocksize n is number of images in pool
    mainImageData = colorBlockClassify(image, b);
    cmpImageData = cell(n, 1);
    for j=1:n
       cmpImageData{j} = colorBlockClassify(imagePool{j});
    end
    commonRGB = cell(n, 1);
    cr = 1;
    for k = 1:n
       imk_data = cmpImageData{j};
       for imcol = imk_data
           for mainImCol = mainImageData
              d = getDiffHist(imcol, mainImCol);
              if d < tau
                  commonRGB{cr} = imagePool{k};
                  cr = cr + 1;
              end
           end
       end
    end
end

