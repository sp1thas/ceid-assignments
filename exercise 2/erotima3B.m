%% KWDIKAS GIA TO ERWTHMA 3 MEROS B (a')

% gia to erwthma b apothikevw ta empros sxetika sfalmata se ena mhtrwo
% 3x2 me thn ekshs logikh:

%                      empros s. sfalma       empros s. sfalma
%                     gia gia thn mtimes      gia thn strassen
%                     ___________________________________________  
% gia 1o typo mhtrwwn|_____________________|_____________________|
% gia 2o typo mhtrwwn|_____________________|_____________________|
% gia 3o typo mhtrwwn|_____________________|_____________________|


    %KWDIKAS GIA TO YPOERWTHMA (i)
n = 1024;
A = rand(n);         % dhmiourgw ta dyo mhtrwa me tis tyxaies times 
B = rand(n);
x1 = mtimes(A,B);
A = single(A);   
B = single(B);
a = mtimes(A,B);
b = strassen(A,B);
[sfalma(1,1), sfalma(1,2)] = function3Bb(x1, a, b);  
%kalw thn synarthsh ypologismou toy empros sfalmatos
%________________________________________________________________________________________________

    %KWDIAKAS GIA TO YPOERWTHMA (ii)
a = rand(n, 1);  %dymiourgeia dyo dianysmatwn tyxaiwn timwn gia thn 
b = rand(n, 1);  % dhmiourgia twn mhtrwwn vandermonde
    
V1 = vander(a);     
V2 = vander(b);
x2 = mtimes(V1, V2);
V1 = single(V1);    
V2 = single(V2);
a = mtimes(V1, V2);
b = strassen(V1, V2);
[sfalma(2,1), sfalma(2,2)] = function3Bb(x2, a, b); 
%ypologismos emp. sfalmatos
%________________________________________________________________________________________________

    %KWDIKAS GIA TO YPOERWTHMA (iii)
n=512;
M = 10^7;
G = [eye(n), zeros(n); zeros(n), eye(n)]; %dhmiourgeia tou enos mhtrwou
H = [M*rand(n), rand(n); rand(n), rand(n)]; %kai tou allou
x3 = mtimes(G, H);
G = single(G);
H = single(H);
a = mtimes(G, H);
b = strassen(G,H);
[sfalma(3,1), sfalma(3,2)] = function3Bb(x3, a, b); 
%ypol. emp. sfalmatos
%________________________________________________________________________________________________

diafora = sfalma(1:3,1)-sfalma(1:3,2);
