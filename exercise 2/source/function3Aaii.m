%% KWDIKAS GIA TO ERWTHMA 3 MEROS A (a') (ii)
function [essfalma] = function3Aaii(A, b)
    n = length(b);
    x = ones(n,1);
    essfalma = norm(ones(n,1) - mldivide(A, b), Inf)/norm(ones(n,1), Inf);
end