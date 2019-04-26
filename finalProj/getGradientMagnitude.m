function gmag = getGradientMagnitude(image, prnt)
    [gmag, gdir] = imgradient(image, "prewitt");
    if prnt 
        figure
        imshowpair(gmag, gdir, 'montage');
    end
end