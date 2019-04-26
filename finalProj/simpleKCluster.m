function colorCluster = simpleKCluster(k) %k nearest neighbors
    image = imread( 'PhotoSorter_images/20160707_123821.jpg'); %image with Ioana standing on landscape. 
    fprintf("READING IN POOL OF IMAGES\n");
    pool = simpleColorPool();
    ims = size(image);
    m = ims(1)*ims(2);
    %goal of this task: find cluster of hiking images with Iona standing in
    %them! 
    fprintf("GETTING FEATURES FOR OUR MAIN IMAGE TO CLUSTER ON\n")
    imageFeatures = getFeatureVectors(image);
    diffVec = zeros(10, 1);
    for p = 1:10
       fprintf("OVERALL PROGRESS:\n     ===at %d / %d=====\n", p, 10);
       imp = pool{p}; 
       S = size(imp);
       impFeatures = getFeatureVectors(imp);
       diffVec(p) = differenceBetweenFeatureVecs(impFeatures, imageFeatures, S(1)*S(2));
    end    
    [~, I] = mink(diffVec, k);
    colorCluster = cell(k, 1);
    for m = 1:k
       ind = I(m);
       colorCluster{m} = pool{ind}; 
    end
    %set(gca,'YDir','reverse');
    montage(colorCluster);
end