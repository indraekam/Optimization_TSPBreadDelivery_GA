function arrChild = mutation(mutRate, arrIndividu, jumlahIndividu, jumlahKromosome)
%     mutRate = 0.7;
    jumlahAnak = mutRate * jumlahIndividu;
    jumlahAnak = ceil(jumlahAnak);

%     jumlahAnak
    indexGen = [2,3,4,5,6,7,8,9,10,11,12,15,16,17,18,19,20,21,22,23,24,25,26];
    arrChild = zeros(jumlahAnak, jumlahKromosome);

    for i = 1 : jumlahAnak
        indexP1 = randi(jumlahIndividu);

        randomXp1 = randi(length(indexGen));
        xp1 = indexGen(randomXp1);

        randomXp2 = randi(length(indexGen));
        xp2 = indexGen(randomXp2);

        while xp1 == xp2
            randomXp2 = randi(length(indexGen));
            xp2 = indexGen(randomXp2); 
        end

        parent1 =  arrIndividu(indexP1, :);
%         parent1
        tampungGen = parent1(xp1);
        parent1(xp1)= parent1(xp2);
        parent1(xp2) = tampungGen;

        arrChild(i, :) =  parent1;
    end
end

