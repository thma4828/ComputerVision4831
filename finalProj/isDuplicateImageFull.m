function isDP = isDuplicateImageFull(h1, h2, tau) %takes in the histograms of full images. 
    d = getDiffHist(h1, h2);
    if d < tau
        isDP = true;
    else
        isDP = false;
    end
end
