function featureVec = getFeatureVec(image, x, y)
    pix = image(x, y, :);
    featureVec = [pix(1), pix(2), pix(3), x, y];
end

