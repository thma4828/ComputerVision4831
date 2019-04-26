function cluster = clusterLandscapes()
    landscapes = loadColorLandscapes();
    mainImage = landscapes{1};
    cluster = findCommonFeatures_RGB(mainImage, landscapes, 50, 5);
end

