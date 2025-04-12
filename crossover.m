function arrChild = crossover(crossRate, arrIndividu, jumlahIndividu, jumlahKromosome)
%     crossRate = 0.7;
    jumlahAnak = crossRate *jumlahIndividu;
    jumlahAnak = ceil(jumlahAnak);
%     jumlahAnak

    indexGen = [2,3,4,5,6,7,8,9,10,11,12,15,16,17,18,19,20,21,22,23,24,25,26];
    arrChild = zeros(jumlahAnak, jumlahKromosome);

    for i =  1 : jumlahAnak
        indexP1 = randi(jumlahIndividu);
        indexP2 = randi(jumlahIndividu);

        while indexP1 == indexP2
            indexP2 = randi(jumlahIndividu);
        end

        randomCutPoint = randi(length(indexGen));
        cutPoint = indexGen(randomCutPoint);

        parent1 = arrIndividu(indexP1,:);
        parent2 = arrIndividu(indexP2,:);

        tampung = parent1(1:cutPoint);
    %     cutPoint
        for j = 2 : length(parent2)
            ada = cekAdaCross(tampung, parent2(j));
            if length(tampung) == 12 
                 tampung =[tampung, 1];
            end

            if  length(tampung) == 13
                 tampung =[tampung, 1];
            end

            if ada == 0
                tampung =[tampung, parent2(j)];
            end
        end 
        tampung =[tampung, 1];

        arrChild(i, :) = tampung;
    end
end

