function trainingPool = InitTrainPool()
    %load in training images.... 
    trainingPool = cell(20);
    p1 = "";
    for j = 1:20 %load first 20 images. 
           if j < 10
               p1 = "PhotoSorter_images/010" +  int2str(j);
           else
               p1 = "PhotoSorter_images/01" +  int2str(j);  
           end
           p2 = ".jpg";
           n = p1 + p2;
           imj = imread(n);
           trainingPool{j} = imj;  
    end
end