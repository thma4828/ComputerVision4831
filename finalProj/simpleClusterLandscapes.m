function cluster = simpleClusterLandscapes()
        figure
        landscapes = loadColorLandscapes();
        mainImage = imread('PhotoSorter_images/20160601_111919.jpg');
        imshow(mainImage);
        figure 
        cluster = simpleColorDuplicateFinder(mainImage, landscapes, 9, 150000);
        %%imshow(cluster{1});
end

