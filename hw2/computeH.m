%Theodore Margoles, CSCI 4831, hmwk2, Flemming
function bestH = computeH(cpoints)
    E = cell(20, 1); %to store up errors 
    Homog = cell(20, 1);
    fourPoints = cell(20, 1); % each cell is the four points needed to compute that given run of a homography
    for j=1:20
        randArr = randi([1, 10], 1, 4);
        fopts = cell(4, 1);
        for r=1:4
            nonce = randArr(r);
            fopts{r} = cpoints{nonce};
        end
        fourPoints{j} = cell2mat(fopts);
        % now compute H with these 4 points...
        % first we need L which is the 8x9 matrix we will do SVD on. 
        L = getL(cpoints);
        [~, ~, V] = svd(L); %right most vector in singular value decomp in descenind order left to right....
        hraw = V(1:9, 9);
        H = [hraw(1) hraw(2) hraw(3); hraw(4) hraw(5) hraw(6); hraw(7) hraw(8) hraw(9)];
        Homog{j} = H;
        E{j} = getError(H, cpoints);
    end
    [~, index] = min(cell2mat(E));
    bestH = Homog{index};
    %kval = 1 / bH(3, 3);
    %bestH = kval * bH;
end