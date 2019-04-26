function filterTest(imname)
    figure
    im = imread(imname);
    img = rgb2gray(im);
    noiseImg = imnoise(img, 'salt & pepper', 0.02);
    imshow(noiseImg);
    iavg = filter2(fspecial('average', 3), noiseImg) / 255; %for k = 3
    imshow(iavg);
    imed = medfilt2(noiseImg);
    imshow(imed);
    g1 = imgaussfilt(noiseImg, .333);
    g2 = imgaussfilt(noiseImg, 1);
    g3 = imgaussfilt(noiseImg, 1.5);
    imshow(g3);
end