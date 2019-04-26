function MainScript() %C:/Users/tsmar/OneDrive/Documents/MATLAB/finalProj/PhotoSorter_images/20160707_******.jpg
    appOn = 1;
    while appOn ~= 0
        usrIn = input("select from the following options:\n    1. Run Pre-Built car classify demo (black and white)\n    2. Run Pre-Built hikerClustering demo (color)\n    3. Run Custom K-nearest clustering on your own image and image pool! (color)\n    4. Check if 2 custom images share a common feature of your choosing!\n    5. QUIT!\n\n");
        switch usrIn
            case 1
                bsize = input("you have selected car classify demo!\n    Enter block size: (I suggest 100)\n");
                tau = input("enter threshold for car similarity tau: (I suggest 1250)\n");
                [carImages, car1] = carClassify(bsize, tau);
                imshowpair(car1, carImages{1}, 'montage')
            case 2
                K = input("you have selected hiker clustering demo!\n    Enter K: ");
                colorCluster = simpleKCluster(K);
                montage(colorCluster);
            case 3
                cluster = customKcluster();
                montage(cluster);
            case 4
                im1 = imread(input("enter full path of image1: \n", 's'));
                im2 = imread(input("enter full path of image2: \n", 's'));
                b = input("enter blocksize: (try 50) \n");
                tau = input("enter threshold tau for feature blocks being the same: (try blocksize*blocksize)\n");
                [res, clist] = hasCommonFeatureBlock(im1, im2, tau, b);
                if res == 1
                    fprintf("yes! image 2 shared that common feature you selected from image!");
                    xy = clist{1};
                    fprintf("for example we found a match on image 2 at pixel at: [%d, %d]\n", xy(1), xy(2));
                end
            case 5
                appOn = 0;
            otherwise
               fprintf("error: you selected an input choice not available you must select [1 - 5]\n\n");
        end
    end
end

