function vecs = getFeatureVectors(image)
    S = size(image);
    x = S(1);
    y = S(2);
    vecs = zeros(x*y, 5);
    for i = 1:x
        for j = 1:y
            vecs(i + j, :) = getFeatureVec(image, i, j);
        end
    end
end

