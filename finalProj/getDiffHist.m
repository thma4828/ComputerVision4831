function d = getDiffHist(hj, hi)
    d = sum(abs(hj - hi), 'all');
end

