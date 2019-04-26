function d = mostSimilarCluster(c, clusters, j)
    s = size(clusters);
    sn = s(1);
    diffs = cell(sn);
    for p = 1:sn
        df = 0;
        if p ~= j
           g = clusters{p};
           sk = size(g);
           for a = 1:max(sk, size(c))
               df = df + (g(a) - c(a));
           end
           diffs{p} = df;
        else
           diffs{p} = 10000; 
        end
    end
    [~, i] = min(cell2mat(diffs));
    d = clusters{i};
end