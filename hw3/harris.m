function [corner_coord, descriptors] = harris(I, w, threshold, suppression)
    gin = rgb2gray(I);
    sz = size(gin);
    Fx = [-1 0 1;-2 0 2; -1 0 1];
    Fy = [-1 -2 -1;0 0 0; 1 2 1];
    corner_coord = cell(cast( sz(1) / w, 'uint8'), 1);
    descriptors = cell(cast( sz(1) / w, 'uint8'), 1);
    cc = 0;
    for i = w:sz(1)-w
       for j = w:sz(2)-w
           %compute partial derivatives for each window area. 
           %will use sobel. 
           Gx = conv2(gin, Fx);
           Gy = conv2(gin, Fy);
           Gx2 = Gx*Gx;
           Gy2 = Gy*Gy;
           Gxy = Gx *Gy;
           M = [Gx2, Gxy; Gxy, Gy2];
           if Gx2 > threshold && Gy2 > threshold && cc < (sz(1) / w)
               corner_coord{cc} = [i ,j];
               descriptors{cc} = M;
               cc = cc + 1;
           end
       end
    end


end