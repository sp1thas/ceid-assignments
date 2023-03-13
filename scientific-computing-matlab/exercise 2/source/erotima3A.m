%% KWDIKAS GIA TO ERWTIMA 3 MEROS A

% ypoerwthma 1
n = 512;
A = randn(n);
cond(1) = function3Aai(A);
x = ones(n,1);
b = A*x;
esfalma(1) = function3Aaii(A, b);
psfalma(1) = function3Aaiii(A, b);
%________________________________________________________________________________________________

% ypoerwthma 2
L1 = tril(A);
cond(2) = function3Aai(L1);
b = L1*x;
esfalma(2) = function3Aaii(L1, b);
psfalma(2) = function3Aaiii(L1, b);
%________________________________________________________________________________________________

% ypoerwthma 3
[L2, U2] = lu(A);
cond(3) = function3Aai(U2);
b = U2*x;
esfalma(3) = function3Aaii(U2, b);
psfalma(3) = function3Aaiii(U2, b);
%________________________________________________________________________________________________

% ypoerwthma 4
G = gfpp(n);
cond(4) = function3Aai(G);
b = G*x;
esfalma(4) = function3Aaii(G, b);
psfalma(4) = function3Aaiii(G, b);
%________________________________________________________________________________________________

% ypoerwthma 5 (i)
c = linspace(-1, 1, n);
V1 = vander(c);
cond(5) = function3Aai(V1);
b = V1*x;
esfalma(5) = function3Aaii(V1, b);
psfalma(5) = function3Aaiii(V1, b);
%________________________________________________________________________________________________

% ypoerwthma 5 (ii)
for i = 1:1:512,
    v(i) = cos((i-1)*pi/(n+1));
end
V2 = vander(v);
cond(6) = function3Aai(V2);
b = V2*x;
esfalma(6) = function3Aaii(V2, b);
psfalma(6) = function3Aaiii(V2, b);
%________________________________________________________________________________________________
for i=1:6
fragma(i) =  cond(i)*psfalma(i);
end
% gia na symfwnoun ta apotelesmata me tis thewritikes provlepseis tha
% prepei empros sfalma < fragma 

y = fragma - esfalma;
