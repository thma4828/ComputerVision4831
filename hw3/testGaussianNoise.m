function testGaussianNoise(imn)
    figure
    i = imread(imn);
    ig = rgb2gray(i);
    img = imnoise(ig, 'gaussian', 0, 1);
    imshow(img);
    iavg = filter2(fspecial('average', 3), img) / 255; %for k = 3
    imshow(iavg);
    imed = medfilt2(img);
    imshow(imed);
    g1 = imgaussfilt(img, .333);
    g2 = imgaussfilt(img, 1);
    g3 = imgaussfilt(img, 1.5);
    imshow(g2);
    imshow(iavg);
end