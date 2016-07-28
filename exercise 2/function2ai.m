%% ERWTHMA 2 (a') (i)
function [sum] = function2ai(x) % ws orisma dexetai to dianysma eisodou
    n = length(x);
    for i = 2:1:n
        x(i) = x(i) + x(i-1);
    end
    sum = x(i);
end

