%Theodore Margoles, CSCI 4831, hmwk2, Flemming
function coordList = getPoints(im1name, im2name) %function to get point correspondences
        im1 = imread(im1name);
        im2 = imread(im2name);
        figure;
        h = [];
        h(1) = subplot(2, 1, 1);
        h(2) = subplot(2, 1, 2);
        image(im1, 'Parent', h(1));
        image(im2, 'Parent', h(2));
        listPoints = ginput(); % get as many as user wants but will only use first 10.
        coordList = cell(10, 1);
        in = 1;
        fid = fopen('cpoints.txt', 'wt');
        fprintf(fid, "\n\n");
        for j=1:2:20
            x1 = listPoints(j, 1);
            y1 = listPoints(j, 2);
            x2 = listPoints(j+1, 1);
            y2 = listPoints(j+1, 2);
            coordList{in} = [x1 y1 x2 y2];
            fprintf(fid, "%f, %f, %f, %f\n", x1, y1, x2, y2);
            in = in + 1;
        end
end