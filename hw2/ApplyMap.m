%Theodore Margoles, CSCI 4831, hmwk2, Flemming
function img = ApplyMap(map, imname) %this is the function I tried to use to apply the map I build in warp1
    im = rgb2gray(imread(imname)); %ultimately when I cast image2 into image1s image plane the image looses its features
    sz = size(im);  %so the farthest I got was getting a working homography which I can demonstrate in int grading...
    img = zeros(sz);
    nr = sz(1);
    nc = sz(2);
    for i=1:nr
        for j=1:nc
            xv = map{i, j};
            x = xv(1);
            y = xv(2);     
            if x <= 800 && x > 0 && y <= 600 && y > 0
                %sum = im(i, j) + im(i+1, j) + im(i, j+1) + im(i-1, j) + im(i, j-1); %calculate new intensity. 
                %sum = sum / 4;
                img(x, y) = im(i, j);
                fprintf("(i, j) == (%d, %d)\n", i, j);
                fprintf("(x ,y) == (%d, %d)\n", x, y);
            end
        end
    end
end