function difference = FitnessBetween2Images(img, target)
     useImage = img{1};
     difference = 0;
     for i = 1:10
        for j = 1:10
             diff = cast(target(i, j), 'uint16') - cast(useImage(i, j), 'uint16');
             difference = difference + abs(diff);
        end
     end
end