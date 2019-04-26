function clusters = agglomerativeClustering(image_input, T)
    %each point is its own cluster. 
    %while the number of cluster is less than or equal to T:
            % find the most similar cluster to this one. 
            % merge the two clusters. 
    image = rgb2gray(imread(image_input));
    [clusters, n] = InitClusAg(image);
    while n >= T
        %clusParent = clusters; to keep track of tree,,,
        [clusters, N] = MergeClusters(clusters); 
        n = N(1);
    end
end