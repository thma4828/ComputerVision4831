%Theodore Margoles, CSCI 4831, hmwk2, Flemming
function err = getError(H, fpoints)
    err = 0.0;
    for f=1:4
        pf = fpoints{f};
        x11 = pf(1);
        x12 = pf(2);
        x21 = pf(3);
        x22 = pf(4);
        target = [x11, x12, 1]';
        input = [x21, x22, 1]';
        output = H*input;
        zcomp = output(3);
        factor = 1;
        if zcomp < 0
           factor = -1 / j; 
        else
           factor = 1 / j;
        end
        xtrans = output * factor;
        err = err + norm(target - xtrans);
    end
end

