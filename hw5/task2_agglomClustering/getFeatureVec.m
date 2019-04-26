function f = getFeatureVec(image)
    %image should have been preloaded before this function call. 
     s = size(image);
     f = zeros(s(1)*s(2), 3, 1);
    
    for i = 1:s(1)
        for j = 1:s(2)
            f(i*j, :, :) = [i, j, image(i, j)] ; 
        end
    end

end