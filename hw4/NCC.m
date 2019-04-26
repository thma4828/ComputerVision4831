function Disparity = NCC(im1name, im2name, w)
    im1 = rgb2gray(imread(im1name));
    im2 = rgb2gray(imread(im2name));
    figure
    h = [];
    h(1) = subplot(2, 1, 1);
    h(2) = subplot(2, 1, 2);
    image(im1, 'Parent', h(1));
    image(im2, 'Parent', h(2));
    s = size(im1);
    % for fixed window size of 3. 
    Disparity = zeros(s(1), s(2));
    Depth = zeros(s(1), s(2));
    for i=1:s(1) - w
        if mod(i, 10) == 0
           fprintf("====Percent Disparity Computed: %f====\n", i*100 / (s(1) - w));  
        end
        for j=1:s(2) - w
            %fprintf("====CALCULATING DISPARITY FOR: (i, j) = (%d, %d)====\n", i, j);
            window = im1(i:i+w-1, j:j+w-1);
            [~, y] = calcNCC(window, i, im2, w);
            d = abs(y(1) - j);
            Disparity(i, j) = 255 - d; %i break the ties by just selecting the first min index y(1) 
            Depth(i, j) = d;
        end
    end
end