%Theodore Margoles, CSCI 4831, hmwk2, Flemming
function map = warp1(H, imname) % warp1 builds a map of coordinates(i, j) in new image plane to the intensity that should go at that pixel.
    im = imread(imname);
    sz = size(im);
    nrows = sz(1);
    ncols = sz(2);
    map = cell(nrows, ncols);
    for i = 1:nrows
       for j = 1:ncols
           rawvec = H * [i j 1]';
           if abs(rawvec(3)) > 0
                vec = abs(rawvec / rawvec(3)); %cast to int = dumb bilinear interpol.
                if vec(1) == 0
                    vec(1) = vec(1) + 1;
                end
                if vec(2) == 0
                     vec(2) = vec(2) + 1;
                end
                map{i, j} = cast([vec(1), vec(2)], 'int16'); %no bilin interpol could be the problem...
           else
                map{i, j} = [0, 0];
           end
       end
    end
end