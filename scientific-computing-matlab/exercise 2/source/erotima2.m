%%          KWDIKAS GIA TO ERWTHMA 2

% o kwdikas ylopoieitai ws ekshs: gia kathe mia diaforetikh eisodo apo to ypoerwthma dyo ylopoiw
%kathe fora thn prosthesh me kathena apo tous tesseris diaforetikous tropous tou ypoerwthmatos a

% opws anaferetai kai sthn anafora ta apotelesmata twn praksewn apothikevontai se ena mhtrwo 4x4
%me thn ekshs logikh:

%                      1os tropos 2os tropos 3os tropos 4os tropos
%         ---------------------------------------------------------
%         1h eisodos__|__________|__________|__________|__________|
%         2h eisodos__|__________|__________|__________|__________|
%         3h eisodos__|__________|__________|__________|__________|
%         4h eisodos__|__________|__________|__________|__________|

sum = zeros(4,4);
sum_s = zeros(4,4);
n = 64;

%% EKTELESH THS PROSTHESHS GIA THN (i) EISODO TOU YPOERWTHMATOS (b')

    % EKTELESH THS PROSTHESHS ME TON (i) TROPO TOU YPOERWTHMATOS (a')
a = function2bi();
a_s = single(a);
sum(1,1) = function2ai(a);
sum_s(1,1) = function2ai(a_s);
sfalma(1,1) = norm(sum(1,1) - sum_s(1,1), inf)/norm(sum(1,1), inf);

    % EKTELESH THS PROSTHESHS ME TON (ii) TROPO TOU YPOERWTHMATOS (a')

sum(1,2) = function2aii(a);
sum_s(1,2) = function2aii(a_s);
sfalma(1,2) = norm(sum(1,2) - sum_s(1,2), inf)/norm(sum(1,2), inf);

    % EKTELESH THS PROSTHESHS ME TON (iii) TROPO TOU YPOERWTHMATOS (a')
    
sum(1,3) = function2aiii(a);
sum_s(1,3) = function2aiii(a_s);
sfalma(1,3) = norm(sum(1,3) - sum_s(1,3), inf)/norm(sum(1,3), inf);

    % EKTELESH THS PROSTHESHS ME TON (iv) TROPO TOU YPOERWTHMATOS (a')
    
sum(1,4) = function2aiv(a);
sum_s(1,4) = function2aiv(a_s);
sfalma(1,4) = norm(sum(1,4) - sum_s(1,4), inf)/norm(sum(1,4), inf);

%________________________________________________________________________________________________

%% EKTELESH THS PROSTHESHS GIA THN (ii) EISODO TOU YPOERWTHMATOS (b')

n = 4096;

    % EKTELESH THS PROSTHESHS ME TON (i) TROPO TOU YPOERWTHMATOS (a')
b = function2bii();
b_s = single(b);
sum(2,1) = function2ai(b);
sum_s(2,1) = function2ai(b_s);
sfalma(2,1) = norm(sum(2,1) - sum_s(2,1), inf)/norm(sum(2,1), inf);

    % EKTELESH THS PROSTHESHS ME TON (ii) TROPO TOU YPOERWTHMATOS (a')

sum(2,2) = function2aii(b);
sum_s(2,2) = function2aii(b_s);
sfalma(2,2) = norm(sum(2,2) - sum_s(2,2), inf)/norm(sum(2,2), inf);

    % EKTELESH THS PROSTHESHS ME TON (iii) TROPO TOU YPOERWTHMATOS (a')

sum(2,3) = function2aiii(b);
sum_s(2,3) = function2aiii(b_s);
sfalma(2,3) = norm(sum(2,3) - sum_s(2,3), inf)/norm(sum(2,3), inf);

    % EKTELESH THS PROSTHESHS ME TON (iv) TROPO TOU YPOERWTHMATOS (a')

sum(2,4) = function2aiv(b);
sum_s(2,4) = function2aiv(b_s);
sfalma(2,4) = norm(sum(2,4) - sum_s(2,4), inf)/norm(sum(2,4), inf);
%________________________________________________________________________________________________

%% EKTELESH THS PROSTHESHS GIA THN (iii) EISODO TOU YPOERWTHMATOS (b')

    % EKTELESH THS PROSTHESHS ME TON (i) TROPO TOU YPOERWTHMATOS (a')
c = function2biii();
c_s = single(c);
sum(3,1) = function2ai(c);
sum_s(3,1) = function2ai(c_s);
sfalma(3,1) = norm(sum(3,1) - sum_s(3,1), inf)/norm(sum(3,1), inf);

    % EKTELESH THS PROSTHESHS ME TON (ii) TROPO TOU YPOERWTHMATOS (a')

sum(3,2) = function2aii(c);
sum_s(3,2) = function2aii(c_s);
sfalma(3,2) = norm(sum(3,2) - sum_s(3,2), inf)/norm(sum(3,2), inf);

    % EKTELESH THS PROSTHESHS ME TON (iii) TROPO TOU YPOERWTHMATOS (a')

sum(3,3) = function2aiii(c);
sum_s(3,3) = function2aiii(c_s);
sfalma(3,3) = norm(sum(3,3) - sum_s(3,3), inf)/norm(sum(3,3), inf);

    % EKTELESH THS PROSTHESHS ME TON (iv) TROPO TOU YPOERWTHMATOS (a')

sum(3,4) = function2aiv(c);
sum_s(3,4) = function2aiv(c_s);
sfalma(3,4) = norm(sum(3,4) - sum_s(3,4), inf)/norm(sum(3,4), inf);
%________________________________________________________________________________________________

%% EKTELESH THS PROSTHESHS GIA THN (iv) EISODO TOU YPOERWTHMATOS (b')

    % EKTELESH THS PROSTHESHS ME TON (i) TROPO TOU YPOERWTHMATOS (a')
d = function2biv();
d_s = single(d);
sum(4,1) = function2ai(d);
sum_s(4,1) = function2ai(d_s);
sfalma(4,1) = norm(sum(4,1) - sum_s(4,1), inf)/norm(sum(4,1), inf);

    % EKTELESH THS PROSTHESHS ME TON (ii) TROPO TOU YPOERWTHMATOS (a')

sum(4,2) = function2aii(d);
sum_s(4,2) = function2aii(d_s);
sfalma(4,2) = norm(sum(4,2) - sum_s(4,2), inf)/norm(sum(4,2), inf);

    % EKTELESH THS PROSTHESHS ME TON (iii) TROPO TOU YPOERWTHMATOS (a')

sum(4,3) = function2aiii(d);
sum_s(4,3) = function2aiii(d_s);
sfalma(4,3) = norm(sum(4,3) - sum_s(4,3), inf)/norm(sum(4,3), inf);

    % EKTELESH THS PROSTHESHS ME TON (iv) TROPO TOU YPOERWTHMATOS (a')

sum(4,4) = function2aiv(d);
sum_s(4,4) = function2aiv(d_s);
sfalma(4,4) = norm(sum(4,4) - sum_s(4,4), inf)/norm(sum(4,4), inf);


