%% KEDIKAS GIA TO ERWTHMA 2 (a') (iii)
function [sum] = function2aiii(x)
    sort(x);
    n = length(x);
    for i = 2:1:n
        x(2) = x(1) + x(2); % prosthetw ta aristerotera 2 stoixeia metaksy toys kai ta kataxwrw
                            % sthn 2h thesh
        x(1) = [];          % mikrainw to mhkos tou dianysmatos kata 1
    end
    sum = x;
end