function pool = simpleColorPool()
    pool = cell(10, 1);
    pool{1} = imread('PhotoSorter_images/20160707_122008.jpg');
    pool{2} = imread('PhotoSorter_images/20160707_122010.jpg');
    pool{3} = imread('PhotoSorter_images/20160707_123818.jpg');
    pool{4} = imread('PhotoSorter_images/20160707_122002.jpg');
    pool{5} = imread('PhotoSorter_images/20160707_123843.jpg');
    pool{6} = imread('PhotoSorter_images/20160707_125400.jpg');
    pool{7} = imread('PhotoSorter_images/20160707_125403.jpg');
    pool{8} = imread('PhotoSorter_images/20160707_130513.jpg');
    pool{9} = imread('PhotoSorter_images/20160707_130524.jpg');
    pool{10} = imread('PhotoSorter_images/20160707_130533.jpg');
end