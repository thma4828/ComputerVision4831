function [x, y] = calcNCC(window, r, im2, w)
    s = size(im2);
    M = s(2);
    nccList = cell(M-w, 1);
    for k=1:M-w
        f = im2(r:r+w-1, k:k+w-1);
        uf = mean2(f);
        sf = std2(f);
        uw = mean2(window);
        sw = std2(window);
        div =  sf*sw;
        cc = 0;
        for i = 1:w
            for j = 1:w
                cc = cc + (1/div)*(f(i, j) - uf)*(window(i, j) - uw);
            end
        end
        nccList{k} = cc;
    end
    [~, y] = max(cell2mat(nccList));
    x = r;
end