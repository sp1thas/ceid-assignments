%% KWDIKAS GIA TO ERWTHMA 3 MEROS A (a') (iii)
function [psfalma] = function3Aaiii(A, b);
    x = mldivide(A, b);
    psfalma = norm(A*x-b, inf)/(norm(A,inf)*norm(x, inf)+norm(b, inf));
end