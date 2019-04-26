function CommonImages = findCommonFeatures(I, imagePool, blocksize, tau) %threshold value tau. 
    %find images in the imagePool with common features to image I.
    MainImageData = blockClassify(I, blocksize);
    ImagePoolData = cell(20, 1);
    CommonImages = cell(20, 1);
    cicount = 1;
    for j = 1:20
        ImagePoolData{j} = blockClassify(imagePool{j}, blocksize); %which is a matrix of histogram data into each cell. 
    end
    %now find all images in the image pool (I1 -> I20) that have features
    %matching to image I.
    for k = 1:20
       imk_data = ImagePoolData{k}; %matrix of histograms. 
       for imc = imk_data
           for mic = MainImageData
              d = getDiffHist(imc, mic);
              if d < tau
                  CommonImages{cicount} = imagePool{k}; %save images with common features! 
              end
           end
       end
    end
end

