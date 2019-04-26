%Theodore Margoles, CSCI 4830, 3/20/2019
function [x, y] = getOnePC(window, r, im2, w)
    % we need to loop across the rth row of im2 and find the closet match
    % to the window we passed in. 
    s = size(im2);
    M = s(2);
    diffs = cell(M-w, 1);
    for k=1:M-w
        %you could apply a gaussian to the window here!
       % Window = im2(r:r+w-1, k:k+w-1);
       % currWindow = imgaussfilt(Window, 1.5);
        currWindow = im2(r:r+w-1, k:k+w-1);
        difmat = abs(window - currWindow);
        difsumvec = sum(difmat);
        diffs{k} = sum(difsumvec);
    end
    [~, y] = min(cell2mat(diffs));
    %fprintf("getOnePC returning with (x,y) = (%d,%d)\n", r, y);
    x = r;
end