function sumdiff = differenceBetweenFeatureVecs(features1, features2, n)
    sumdiff = 0;
    for i=1:n
       if mod(i, 33333) == 0
            fprintf("---->DIFF BETWEEN FEATURES: at %d / %d == %f percent done\n\n", i, n, (i*100)/n);
       end 
       f1 = features1(i, :); %[pix(1), pix(2), pix(3), x, y] <--- feature vectors of this form
       f2 = features2(i, :); %I want to weight color paramters as more important slightly. 
       r = [2*abs(f1(1) - f2(1)), 2*abs(f1(2) - f2(2)), 2*abs(f1(3) - f2(3)), abs(f1(4) - f2(4)), abs(f1(5) - f2(5))];  
       sumdiff = sumdiff + sum(r, 'all');
    end
end

