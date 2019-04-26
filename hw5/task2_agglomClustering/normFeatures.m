function f = normFeatures(image)
    s = size(image);
    m = s(1);
    n = s(2);
    f = getFeatureVec(image);
    sf = size(f);
    
    for i = 1:s(1)
        for j = 1:s(2)
            fvec = f(i + j, :, :);
            uij = mean(fvec);
            vr = var(fvec);
            f(i + j, :, :)  = (f(i + j, :, :) - uij) / vr;
        end
    end
  %
  % f = zeros(s(1) + s(2), 3, 1); 
  %  
  %  for i = 1:s(1)
  %      for j = 1:s(2)
  %          f(i + j, :, :) = [i, j, image(i, j)] ; 
  %      end
  %  end



end