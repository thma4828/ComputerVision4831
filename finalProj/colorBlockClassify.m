function Hist3dArray = colorBlockClassify(image, blocksize)
    imgblocks = im2col(image, [blocksize, blocksize], 'distinct');
    m = max(size(imgblocks(:, 1)));
    
    Hist3dArray = zeros(m, 255, 255, 255);
    for p=1:m
       Hist3dArray(p, :, :, :) = getColorFeature(imgblocks(p, :), blocksize);
    end
end

