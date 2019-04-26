function dmap(name1, name2, w)
    [Dis, Dep] = disparitySSD(name1, name2, w);
    figure;
    imshow(mat2gray(Dis));
    figure;
    imshow(mat2gray(Dep));
end