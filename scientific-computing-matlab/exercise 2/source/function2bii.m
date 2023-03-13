%% KWDIKAS GIA TO ERWTHMA 2 (b') (ii)
function [m] = function2bii()
    e = 1.0*exp(1) - 18;	%ypologismos tou 1.0*e -18
    m = zeros(1,4096);

for i=1:1:2047	%kataskevh tou zhtoumenou mhtrwou 
    m(i)= 1.0;
end
m(2048) = e;
m(2049) = e;

for i=2050:1:4096
    m(i) = -1.0;
end
end