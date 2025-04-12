jumlahIndividu = 20;
jumlahKromosome = 27;
iterasi = 100;
crossRate = 0.4;
mutRate = 0.6;

arrIndividu = initIndividu(jumlahIndividu, jumlahKromosome);
arrIndividu


for i = 1 : iterasi
    
    fprintf("Iterasi Ke %d", i);
    arrChildCross = crossover(crossRate , arrIndividu, jumlahIndividu, jumlahKromosome);

    arrChildCross

    %  Ini Child Dari mutasi
    arrChildMut = mutation(mutRate, arrIndividu, jumlahIndividu, jumlahKromosome);
    arrChildMut

    [arrIndividuGabung, arrFitnessGabung] = evaluasi(arrIndividu, arrChildCross, arrChildMut, jumlahKromosome);

    arrIndividuGabung
    arrFitnessGabung
    
    fprintf("Hasil Evaluasi dan Seleksi Iterasi Ke %d", i);
    arrIndividu = seleksiElitism(arrIndividuGabung, arrFitnessGabung, jumlahIndividu);

    arrIndividu
end

% Print Solusi Hasil Algen
solusi = arrIndividu(1 , :);
solusi
fileNamaToko = "namaToko.csv";
dataToko = ["Depot (Perusahaan Roti Bobo)"; "TOKO BUNDA";"TOKO MAJU JAYA";"TOKO HARIAN AGUS";"TOKO SAUDARA JAYA";"TOKO AJO BARANG HARIAN";"TOKO HARIAN RENI";"TOKO DODI JAYA";"TOKOBUNDA 2";"TOKO RUDI";"TOKO ZAKY"; "TOKO ASRIL JAYA";"TOKO ARKHAN";"TOKO ZAZIZO";"TOKO RAHMAT CIPTA KARYA";"TOKO MULYADI";"TOKO EDDY JAYA";"TOKO AZA";"TOKO SENTOSA JAYA";"TOKO PAS JAYA";"TOKO DONI";"TOKO S & Q";"TOKO SEMPURNA JAYA";"TOKO BERDUA SATU TUJUAN"];
% dataToko = ["Depot (Perusahaan Roti Bobo)"; "TOKO BUNDA"];
%Print Armada Satu
fprintf("Rute Armada Satu : \n");
for i = 1 : 13
    fprintf("%d : ", i);
    disp(dataToko(solusi(i)));
end
jarak1 = hitungJarak(solusi(1:13));
fprintf("Dengan Total Jarak Armada 1 : %.2f Km\n", jarak1);

fprintf("\nRute Armada Dua : \n");
no = 1;
for i = 14 : 27
    fprintf("%d : ", no);
    no = no + 1;
    disp(dataToko(solusi(i)));
end

jarak2 = hitungJarak(solusi(14:end));
fprintf("Dengan Total Jarak Armada 2: %.2f Km\n", jarak2);

jarakTotal = hitungJarak(solusi);
fprintf("\nDengan Total Jarak Keseluruahan Perjalanan: %.2f Km\n", jarakTotal);


