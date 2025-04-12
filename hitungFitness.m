function arrFitnessIndividu = hitungFitness(arrIndividu,jumlahKromosome)
    fileJarak = 'dataJarak.csv';
    dataJarak = csvread(fileJarak);

    arrFitnessIndividu = [];
    % length(arrIndividu(:,1))
    % CTRL + R => CTRL + T

    for i = 1 : length(arrIndividu(:, 1))
        totalJarak = 0;
        for j = 1 : jumlahKromosome - 1
            totalJarak = totalJarak + dataJarak(arrIndividu(i,j), arrIndividu(i,j+1));
        end
    %     totalJarak
        arrFitnessIndividu(i) = 100/ totalJarak ;
    end

end

