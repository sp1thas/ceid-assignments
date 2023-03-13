function [ freq ] = theor_freq( xq, N,min_value, max_value)
n = 2^N;
y = (max_value-min_value)/n;
freq = zeros(n,1);
syms x;
for i=1:n
    F = exp(-x);
    freq(i) = int(F, min_value+(i-1)*y, min_value + i*y);
end
end

