function hist3 = getColorFeature(block, bsize)
    b = resize(block, bsize, bsize, 3);
    hist3 = zeros(255, 255, 255);
    for i = 1:bsize
       for j = 1:bsize
            pixel = b(i, j, :);
            x = pixel(1);
            y = pixel(2);
            z = pixel(3);
            hist3(x, y, z) = hist3(x, y, z)  + 1;
       end
    end
end

