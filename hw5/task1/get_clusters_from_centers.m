function clusters = get_clusters_from_centers(centers, data, k, i, j, r, t, param1)
    clusters = cell(k);
    if t
        for c = 1:k
            theCenter = centers{c};
            clus1 = zeros(i*j, 3);
            for I = 1:i
                for J = 1:j 
                    dvec = cast(cell2mat(theCenter), 'double') - cast(data(i*j, :), 'double');
                    d = dvec * dvec';
                    if d <= r
                       clus1(I*J, :) = data(I*J, :);
                    end 
                end
            end
            clusters{c} = clus1;
        end
    else
        clusters = param1;
        for c = 1:k
            theCluster = clusters{c};
            theCenter = centers{c};
            s = size(theCenter);
            clus1 = zeros(i + j, 3, 1);
            for I = 1:s(1)
                for J = 1:s(2) 
                    %fprintf("data{i, j} === %d\theCenter = %d\n\n", data{i, j}, theCenter)
                    dvec = cast(theCluster, 'double') - cast(theCenter, 'double');
                    d = dvec * dvec';
                    if d <= r
                       clus1(I + J, :, :) = data(I + J, :, :);
                    end 
                end
            end
            clusters{c} = clus1;           
        end    
    end  
end