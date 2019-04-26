function duplicates = findDuplicates(histArray,j, n, tau) %j is index of one we are finding duplicates for, n is number of groups
%so far finds duplicate feature blocks in the same image. 
%feature blocks have been split up and put into columns of a matrix
%each block gets a histogram. 
%finds duplicates feature blocks within some threshold tau. 
% his array is a matrix where the
    jcol = histArray(j, :);
    duplicates = zeros(n-1, 1); %max possible number of duplicates. 
    dc = 1; %counter var.
    hj = 1;
    for hcol = histArray
        if hj ~= j
            diffHist = getDiffHist(jcol, hcol); %take differences in histograms. 
            if diffHist < tau
               duplicates(dc) = hj; %save the index of feature identical to the jth block in the image. 
               dc = dc + 1;
            end
        end
        hj = hj + 1;
    end
end

