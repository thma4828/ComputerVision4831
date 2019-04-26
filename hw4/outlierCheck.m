function outlierCheck(name1, name2, w)
    figure;
    h = [];
    h(1) = subplot(3, 1, 1);
    h(2) = subplot(3, 1, 2);
    h(3) = subplot(3, 1, 3);
    fprintf("===calculating first disp map: dLR=====\n");
    dLR = disparitySSD(name1, name2, w);
    fprintf("===calculating second disp map: dRL=====\n");
    dRL = disparitySSD(name2, name1, w);
    fprintf("==calculation finished===");
    imshow(dLR);
    figure;
    imshow(dRL);
    b = getBinaryImage(dLR, dRL, 0.5);
    
end