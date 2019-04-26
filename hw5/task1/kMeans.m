function [kclusters, data, kcenters] = kMeans(input_image, k, r)
    image = rgb2gray(imread(input_image));
    s = size(image);
    data = getFeatureVec(image);

    kcenters = get_initial_centers(k, s(1), s(2));
    kclusters = get_clusters_from_centers(kcenters, data, k, s(1), s(2), r, true);
    
    for j = 1:10
       fprintf("====calculating kmeans, at iteration: %d/%d====\n\n", j, 10);
       kcenters =  getNewCenters(data, kclusters, kcenters, k);
       kclusters = get_clusters_from_centers(kcenters, data, k, s(1), s(2), r, false, kclusters);
    end  
end