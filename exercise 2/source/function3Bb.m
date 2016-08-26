%% KWDIKAS GIA TO 3 MEROS B (b')
function [s1, s2] = function3Bb(x1, x2, x3)
       %x1 einai to thewritiko apotelesma pou prokeiptei apo stoixeia
       %diplhs akriveias me thn synarthsh mtimes
       %x2 to apotelesma me stoixeia monhs akriveia me thn mtimes
       %x3 to apotelesma me monh akriveia me thn strassen
       s1 = norm(x2 - x1, inf)/norm(x1, inf); %ypologismos empros 
       %sfalmatos me thn methodo mtimes
       s2 = norm(x3 - x1, inf)/norm(x1, inf);    %ypologismos empros 
       %sfalmatos me thn methodo strassen 
end

       