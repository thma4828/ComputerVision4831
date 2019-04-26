function alldups = getAllColorDupsFullImage(image, imagepool, n, tau)
    alldups = cell(n-1, 1);
    a = 1;
    mainHist = getImHistFull(image);
    for i=1:n
       curHist = getImHistFull(imagepool{i});
       if isDuplicateImageFull(mainHist, curHist, tau)
           alldups{a} = imagepool{i}; %save the duplicate image. 
           a = a + 1;
       end
    end
end

