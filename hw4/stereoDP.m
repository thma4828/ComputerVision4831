%Theodore Margoles, CSCI 4830, 3/20/2019

function [D, DirMat] = stereoDP(e1, e2, maxDisp, occ) %gets matrix D for scanlines e1 and e2
    s = size(e1);
    S = s(2);
    D = zeros(S, S);
    DirMat = zeros(S, S);
    %initialize base cases...
    for ii = 1:S
       D(ii, 1) = ii * occ;
       D(1, ii) = ii * occ;
    end
    for i=2:S
        %if mod(i, 5) == 0
           %fprintf("Percent Complete: %f\n", i*100/S);  
       % end
        for j=2:S
             dij = abs(e1(i) - e2(j))*abs(e1(i) - e2(j));
                        %i = 1 for NW, i=2 for W, i=3 for N....
             carray = [D(i-1, j-1) + dij, D(i-1, j) + occ, D(i, j-1) + occ];
             [D(i, j), DirMat(i, j)] = min(carray); %the index into the choice array represents the direction!
        end
    end
end