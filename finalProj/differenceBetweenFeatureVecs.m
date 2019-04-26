function sumdiff = differenceBetweenFeatureVecs(features1, features2, n)
    sumdiff = 0;
    for i=1:n
       f1 = features1(i, :);
       f2 = features2(i, :);
       sumdiff = sumdiff + sum(abs(f1 - f2), 'all');
    end
end

