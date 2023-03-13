function [entropy] = efficiency(x, N)
entropy = 0;
for i=1:length(x)
    if (x(i) ~= 0)
        entropy = entropy - x(i)*log2(x(i));
    end
end
efficiency = entropy/N;