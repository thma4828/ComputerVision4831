function  hist3 = wholeColorFeauture(image)
    hist3 = zeros(255, 255, 255);
    s = size(image);
    for i = 1:s(1)
        for j = 1:s(1)
            pixel = image(i, j, :);
            x = pixel(1);
            y = pixel(2);
            z = pixel(3);
            hist3(x, y, z) = hist3(x, y, z) + 1;
        end
    end

end

