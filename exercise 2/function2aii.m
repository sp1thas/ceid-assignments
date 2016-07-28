%% KWDIKAS GIA TO ERWTHMA 2 (a') (ii)
function [sum] = function2aii(x)
    n = length(x);
    x = sort(x);    %sortarw to dianysma
    for i = 2:1:n
        x(i) = x(i) + x(i-1);
    end
    sum = x(i);
end