%Theodore Margoles, CSCI 4830, 3/20/2019

function [Set, SetDirs] = stereoDPwrapper(i1, i2, maxDisp, occ) %wrapper function for my stereoDP!
    tic;
    img1 = rgb2gray(imread(i1)); %load in images and convert to grayscale.
    img2 = rgb2gray(imread(i2));
    s = size(img1);
    Set = cell(s(1), 1); %allocate space for solution matrices...
    SetDirs = cell(s(1), 1); %allocate space for direction solution matrices. 
    for line=1:s(1) %for each horizontal epiploar line! 
       if mod(line, 5) == 0
        fprintf("percent complete: %f\n", line*100 / s(1));
       end
       e1 = img1(line, :);
       e2 = img2(line, :);
       [Set{line}, SetDirs{line}] = stereoDP(e1 ,e2, maxDisp, occ);
    end
    toc
end