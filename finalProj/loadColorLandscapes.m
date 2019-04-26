function landscapes = loadColorLandscapes()
    landscapes = cell(9, 1);
    landscapes{1} = imread('PhotoSorter_images/20160601_111922.jpg');
    landscapes{2} = imread('PhotoSorter_images/20160601_111929.jpg');
    landscapes{3} = imread('PhotoSorter_images/20160601_111931.jpg');
    landscapes{4} = imread('PhotoSorter_images/20160601_112831.jpg'); 
    landscapes{5} = imread('PhotoSorter_images/20160601_112833.jpg');
    landscapes{6} = imread('PhotoSorter_images/20160601_112838.jpg');
    landscapes{7} = imread('PhotoSorter_images/20160601_112840.jpg');
    landscapes{8} = imread('PhotoSorter_images/20160601_112848.jpg');
    landscapes{9} = imread('PhotoSorter_images/20160601_112849.jpg');
end

