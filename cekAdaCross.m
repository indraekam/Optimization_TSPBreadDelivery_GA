function ada = cekAdaCross(tampung,genCari)

    ada = 0;
    for i = 1 : length(tampung)
        if genCari == tampung(i) 
            ada = 1;
            break;
        end
    end
    
end

