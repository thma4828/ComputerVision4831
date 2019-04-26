function nccMap(name1, name2)
    D3 = NCC(name1, name2, 3);
    D5 = NCC(name1, name2, 5);
    D7 = NCC(name1, name2, 7);
    figure;
    subplot(2, 1, 1), imshow(D3);
    subplot(2, 1, 2), imshow(D5);
    subplot(2, 2, 1), imshow(D7); 
end