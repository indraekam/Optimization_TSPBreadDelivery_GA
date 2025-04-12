function [arrIndividuGabung,arrFitnessGabung] = evaluasi(arrIndividu,arrChildCross,arrChildMut,jumlahKromosome)

    arrFitnessIndividu = hitungFitness(arrIndividu, jumlahKromosome);

    % CTRL + R => CTRL + T

%     arrFitnessIndividu
    arrFitnessCross = hitungFitness(arrChildCross, jumlahKromosome);

%     arrFitnessCross

    arrFitnessMut = hitungFitness(arrChildMut, jumlahKromosome);
%     arrFitnessMut

    arrIndividuGabung = [arrIndividu;arrChildCross;arrChildMut];
%     arrIndividuGabung
% 
    arrFitnessGabung = [arrFitnessIndividu,arrFitnessCross, arrFitnessMut];
%     arrFitnessGabung
end

