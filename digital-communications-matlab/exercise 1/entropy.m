function [entropy] = entropy(x)
p = exp_freq(x);
entropy = 0;
for i=1:length(p)
    if (p(i) ~= 0)
        entropy = entropy + p(i) * log2(1/p(i));
    end
end