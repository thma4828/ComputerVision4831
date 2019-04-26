function [carImages, car1] = carClassify(blocksize, tau)
    figure %first show image we are trying to cluster on. 
    tpool = InitTrainPool(); %training pool of black and white images with some cars. 
    car1 = tpool{10}; %pull out a car image 10. 
    fprintf("this is the image we are clustering on!\n");
    imshow(car1); %show initial image
    carImages = findCommonFeatures(car1, tpool, blocksize, tau); %only finds image 20 with block classify...
    fprintf("this is the cluster of car images we got!\n");
    imshowpair(car1, carImages{1}, 'montage'); %show that it found car image 20 next to car image 10 as a car image. 
end

