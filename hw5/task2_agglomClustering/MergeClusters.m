function [clusters, sz] = MergeClusters(clusters)
    %TODO write a function that for each cluster in clusters, find its
    %closest cluster, and then merge the two clusters.
    s = size(clusters);
    sn = s(1);
    newClusters = cell(sn / 2);
    for j = 1:sn/2
        c = clusters{j}; %pull out each cluster. 
        %now find cluster most similar to c. 
        d = mostSimilarCluster(c, clusters, j);
        %now merge these two clusters. 
        newClusters{j} = Merge2(c, d);
    end
    sz = size(newClusters);
end