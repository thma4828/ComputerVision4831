%Theodore Margoles, CSCI 4830, 3/20/2019
function taskOne(im1name, im2name) %script to compare different window size affect on SSD
     [D1, ~] = disparitySSD(im1name, im2name, 1); %disparitySSD is main function that does work of calculating SSD
     [D5, ~] = disparitySSD(im1name, im2name, 5); %calc with different window sizes
     [D11, ~] = disparitySSD(im1name, im2name, 11);
     figure;
     subplot(1, 3, 1), imshow(D1);
     subplot(1, 3, 2), imshow(D5);
     subplot(1, 3, 3), imshow(D11); 
end