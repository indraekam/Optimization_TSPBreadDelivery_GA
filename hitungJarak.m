function totalJarak = hitungJarak(solusi)
    fileJarak = 'dataJarak.csv';
    dataJarak = csvread(fileJarak);
    totalJarak = 0;
    for j = 1 : length(solusi) - 1
        totalJarak = totalJarak + dataJarak(solusi(j), solusi(j+1));
    end

end

