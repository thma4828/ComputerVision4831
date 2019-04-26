function hist3 = getImHistFull(image)
    hist3 = zeros(255, 255, 255);
    dims = size(image);
    for i = 1:dims(1)
        for j = 1:dims(2)
            p = image(i, j, :);
            hist3(p(1), p(2), p(3)) = hist(p(1), p(2), p(3)) + 1;
        end
    end 
end

