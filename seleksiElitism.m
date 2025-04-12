function arrIndividu = seleksiElitism(arrIndividuGabung,arrFitnessGabung, jumlahIndividu)
% Bubble Sort
    for i = 1 : length(arrIndividuGabung(:, 1))
        for j = 1 : length(arrIndividuGabung(:, 1))-1
            if arrFitnessGabung(j) < arrFitnessGabung(j+1)
                tampung = arrFitnessGabung(j);
                arrFitnessGabung(j) = arrFitnessGabung(j+1);
                arrFitnessGabung(j+1) = tampung;

                tampungIndividu = arrIndividuGabung(j, :);
                arrIndividuGabung(j,:) = arrIndividuGabung(j+1, :);
                arrIndividuGabung(j+1,:) = tampungIndividu(:);
            end
        end
    end
    
    arrIndividuGabung
    arrFitnessGabung

    for i = 1 : jumlahIndividu
        arrIndividu(i, :) = arrIndividuGabung(i, :);
    end
end

