function cluster = customKcluster()
%get inputs from user. 
    imageName = input('enter main image name (full path): \n', 's');
    n = input('enter number of images you want in your pool to compare:\n');
    K = input('enter k (find k nearest neighbors of main image to add to cluster):\n');
    cluster = cell(K, 1);
%allocate storage / read in images / prepare for main loop.   
    image = imread(imageName); %main image
    diffs = zeros(n, 1); %array of differences between features of images. 
    impool = cell(n, 1); %pool of images user will build. 
%get features vectors for main image.   
    mainFeatures = getFeatureVectors(image);
%build image pool. 
    for i = 1:n
        impool{i} = imread(input('enter image to add to pool (full path): \n', 's'));
    end
%now get differences between main image and each image in the image pool. 
    for j = 1:n
        imj = impool{j};
        s = size(imj);
        Nxy = s(1) * s(2);
        imjFeatures = getFeatureVectors(imj);
        diffs(j) = differenceBetweenFeatureVecs(mainFeatures, imjFeatures, Nxy);
    end
%get k nearest neighbors
    [~, I] = mink(diffs, K);
    for k = 1:K
        ind = I(k);
        cluster{k} = impool{ind}; 
    end
    %set(gca,'YDir','reverse');
    montage(cluster);
end

