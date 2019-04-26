%Theodore Margoles, CSCI 4830, 3/20/2019

function Disp = getDisparityDP(Dirs, m, n) %m is number of lines, n is number of cols
    Disp = zeros(m, n);
    for k = 1:m %k represents what line we are on...
       fprintf("on scanline: %d out of %d\npercent done: %f\n", k, m, k/m);
       dr = Dirs{k}; %pull out the direction matrix. 
       mapij = backTrackDP(dr); %point correspondes for each pixel in that line.... 
       dims = size(cell2mat(mapij));
       for leftX = 1:dims(1)
          rightX = mapij{leftX};
          if size(rightX) > 0
              TheDisparity = abs(rightX - leftX);
              Disp(k, leftX) = 255 - TheDisparity;
          end
       end
    end
    figure;
    imshow(mat2gray(Disp));
end