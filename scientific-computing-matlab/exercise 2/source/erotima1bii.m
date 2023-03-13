%% KWDIKAS GIA TO ERWTHMA 1 (b') (ii)

 % mhtrwo pou kataxwrw ta apotelesmata
                             % sthn prwth sthlh apothikevontai ta
                             % apotelesmata gia x = 1 kai sthn defterh gia
                             % x = n
                             
i = 1;                       % metrhths
for n=15:2:25
    a = poly(n:-1:0);        % ypologizw tous syntelestes tou polyonymou
    apotelesmata(1,i) = polyval(a , 1)  % ypologizw thn timh tou polywnymou gia x=1
    apotelesmata(2,i) = polyval(a , n)  % kai gia x=n
    i = i +1;   % afksanw ton metrhth kata ena
end
