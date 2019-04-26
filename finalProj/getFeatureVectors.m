function vecs = getFeatureVectors(image)
    S = size(image);
    x = S(1);
    y = S(2);
    vecs = zeros(x*y, 5);
    totalInd = 1;
    for i = 1:x
        for j = 1:y
            totalInd = totalInd + 1;
            if mod(totalInd, 33333) == 0
                 fprintf("---->GETTING FEATURES: %d / %d, %f percent done\n\n", totalInd, x*y, (totalInd*100) / (x*y));
            end
            vecs(totalInd, :) = getFeatureVec(image, i, j);
        end
    end
end

