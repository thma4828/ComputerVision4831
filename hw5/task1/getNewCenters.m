function newCenters = getNewCenters(data, clusters, oldcenters, k)
    newCenters = cell(k);
    for i = 1:k
       theCluster = clusters{i};
       s = size(theCluster);
       sumvec = zeros(1, 3);
       m = max(s(1), s(2));
       fprintf("s(1) = %d, s(2) = %d\n", s(1), s(2));
       scount = 0;
       if m == 0
           %nothing to do with this cluster.... 
           fprintf("cluster had nothing in it\n")
       else
              for j = 1:m
                    if (i*j) <= s(1)
                        p = theCluster(i*j, :, :);
                        sumvec(1) = sumvec(1) + p(1);
                        sumvec(2) = sumvec(2) + p(2);
                        sumvec(3) = sumvec(3) + p(3);
                        scount = scount + 1;
                    end
              end
              newx = sumvec(1) / scount;
              newy = sumvec(2) / scount;
              newz = sumvec(3) / scount;
              newCenters{k} = [newx, newy, newz]; 
       end
    end
end