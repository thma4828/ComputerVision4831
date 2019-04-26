function [clusters, n] = InitClusAg(image)
    %TODO: write a function that returns set of clusters that is just 1
    %cluster for each point. returns clusters as a cell and number of clusters.
    f = getFeatureVec(image); %get the data in a nice lil vector 
    n = size(f);
    %clusters = zeros(n(1) + n(2), 3, 1); %just writing this code out like this so I can use it again later
    clusters = cell(n(1) + n(2));
    for i = 1:n(1)
        for j = 1:n(2)
           clusters{i + j} = f(i+j, :, :);
        end
    end
end