%Theodore Margoles, CSCI 4830, 3/20/2019

function MapIJ = backTrackDP(D)
    fprintf("backtracking...\n");
    %need to loop through the dirs table backward essentially and follow
    %your way to the (1, 1)
    s = size(D);
    i = s(1);
    j = s(1);
    MapIJ = cell(s(1), 1);
    while i ~= 1 && j ~= 1
       if D(i, j) == 1
           %we matched pixel i with pixel j....
           MapIJ{i} = j;
           i = i - 1;
           j = j - 1;
       elseif D(i, j) == 2
           %we occluded pixel j
           i = i - 1;
       elseif D(i, j) == 3
           %we occluded pixel i
           j = j - 1;
       end
       %fprintf("backtracking at (%d, %d)\n", i, j);
    end
end