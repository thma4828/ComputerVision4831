%Theodore Margoles, CSCI 4831, hmwk2, Flemming
function L = getL(cpoints) %this function builds our 8x9 matrix L to do svd on. 
    L = zeros(2*4, 3*3);
    fr = 1;
    sn = 2;
    for r = 1:4
       pvs = cpoints{r};
       x11 = pvs(1);
       x12 = pvs(2);
       x21 = pvs(3);
       x22 = pvs(4);
       r1 = [0, 0, 0, x21, x22, 1, -1*x12*x21, -1*x12*x22, -1*x12]; %each set of two rows will look like this.
       r2 = [ x21,  x22, 1, 0, 0, 0, -1*x11*x21, -1*x11*x22, -1*x11];
       L(fr, 1:9) = r1;
       L(sn, 1:9) = r2;
       fr = fr + 2;
       sn = sn + 2;
    end
end 