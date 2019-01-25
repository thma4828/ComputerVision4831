function child = mateImages(parent1, parent2, m, n) % parent1 and parent2 should have been already converted from cell arrays. 
    child = zeros(m, n, 3);
    for i=1:m
        for j=1:n
            for col=1:3
                nonce = randi([-1, 10], 1);
                if nonce >= 0 && nonce < 5
                    child(i, j, col) = parent1(i, j, col);
                elseif nonce >= 5
                    child(i, j, col) = parent2(i, j, col);
                else
                    child(i, j, col) = (parent1(i, j, col) + parent2(i, j, col)) / 2;
                end
            end
        end
    end
end