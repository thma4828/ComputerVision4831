function child = mateImages(parent1, parent2, m, n) % parent1 and parent2 should have been already converted from cell arrays. 
    child = zeros(m, n);
    for i=1:m
        for j=1:n
            nonce = randi([-2, 10], 1);
            if nonce >= 0 && nonce < 5
                child(i, j) = parent1(i, j);
            elseif nonce >= 5
                child(i, j) = parent2(i, j);
            else
                child(i, j) = (parent1(i, j) + parent2(i, j)) / 2;
            end
        end
    end
end