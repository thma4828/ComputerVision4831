function [Disparity, Depth] = disparitySSD(im1name, im2name, w)
    %focalLen = 20; %these need to be passed in from camera params. 
    %baseLine = 1; %needs to be passed in...
    im1 = rgb2gray(imread(im1name)); 
    im2 = rgb2gray(imread(im2name));
    s = size(im1);
    % for fixed window size of 3. 
    Disparity = zeros(s(1), s(2));
    Depth = zeros(s(1), s(2));
    for i=1:s(1) - w
        %part of the uniqueness constraint. 
        %used_yvals = zeros(s(1), 1);
        %uyc = 1;
        if mod(i, 10) == 0
           fprintf("====Percent Disparity Computed: %f====\n", i*100 / (s(1) - w));  
        end
        for j=1:s(2) - w
            %fprintf("====CALCULATING DISPARITY FOR: (i, j) = (%d, %d)====\n", i, j);
            window = im1(i:i+w-1, j:j+w-1);
            [~, y] = getOnePC(window, i, im2, w); %get our point correspondence
            dif = abs(y(1) - j);
            dif2 = dif * dif;
            Disparity(i, j) = 255 - dif;
            Depth(i, j) = dif;
            %uniqueness constraint impl here
             %p = size(y);
             %for m =1:p
              % if ~ismember(y(m), used_yvals)
               %     dif = abs(y(m) - j);
                %    dif2 = dif * dif;
                 %   Disparity(i, j) = dif2;
                  %  Depth(i, j) = 1 / dif2;
                   % used_yvals(uyc) = y(m);
                    %uyc = uyc + 1;
               %end
           % end
     
        end
    end
end