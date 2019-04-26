function skinDetection(trainImages, trainLabels, image)
    %get a percentage of skin pixels overall in the training images. 
    pskin = mean(trainLabels, 'all'); %this is the percentage of skin pixels in the training data. 
    %we will use bayes formula for each new pixel in a test image, we will
    %calculate the probability that it is skin. 
end

