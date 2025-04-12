function arrIndividu = initIndividu(jumlahIndividu,jumlahKromosome)
%     jumlahIndividu = 3;
%     jumlahKromosome = 27;
    titikLokasi = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
    arrIndividu = zeros(jumlahIndividu, jumlahKromosome);

    arrIndividu = [];
    for i = 1:jumlahIndividu
       acak = titikLokasi(randperm(length(titikLokasi)));
       acak = [1, acak, 1];
       armadaSatu = acak(1 : 12);
       armadaSatu = [armadaSatu, 1];
       armadaDua = acak(13 : end);
       armadaDua = [1, armadaDua];
       test = [armadaSatu, armadaDua];
    %    arrIndividu(i) = test;
       for j = 1 : jumlahKromosome
           arrIndividu(i,j) = test(j);
       end   

    end
end

