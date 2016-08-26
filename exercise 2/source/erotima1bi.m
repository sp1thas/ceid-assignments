%% KWDIKAS GIA TO ERWTHMA 1 (b') (i)
n = 15;
for i=1:1:6
    a = poly(0:n); 
    for j=1:1:n+2
        results(i,j) = a(j);
    end
    for l = n+3:27
        results(i,l) = NaN;     %gia kathe polywnymo stis theseis toy mhtrwou pou perisevoun
                                % kataxwrw thn timh NaN gia diefkolynsh
    end
    n = n+2;
end
