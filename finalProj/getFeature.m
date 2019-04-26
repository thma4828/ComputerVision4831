function hist = getFeature(block)
    block = uint8(block);
    sb = size(block);
    hist = zeros(255, 1);
    if sb(2) > 0
        for i = 1:sb
            %bi = cast(block(i), 'uint8'); %simple block is just a vector. 
            bi = block(i);
            if bi == 0
               bi = 1; 
            else
                if bi < 0
                    fprintf("error {1}: pixel had negative value in a block.\n");
                    bi = 1;
                end
                if bi > 255
                   fprintf("error {2}: pixel had value > 255 in a block.\n");
                   bi = 255; 
                end
            end

            hist(bi) = hist(bi) + 1;
        end
    end 
end