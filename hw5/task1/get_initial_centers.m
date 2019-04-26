function kCenters = get_initial_centers(k, ii, jj)
    kCenters = cell(k);
    for j = 1:k
        kx = randi(ii);
        ky = randi(jj);
        ki = randi(255);
        kCenters{j} = {kx, ky, ki};
    end
end