%% SYNARTHSH KWDIKOPOIHSHS me ton algorithmo Lloyd Max

function [xq, centers, D, p] = Lloyd_Max(x,N,min_value,max_value)
kmax = 0;
quant_levels = 2^N; % ypologizw ta epipeda kvantismou me vash to N
xq = zeros(length(x),1) ; % arxikopoiw to kvantismeno shma me mhdenika
centers = zeros(quant_levels,1) ; % arxikopoiw ta kentra kvantismou me mhdenika
D(1) = 0;
Sqnr(1) = 0;
p = zeros(quant_levels,1) ; % arxikopoiw to mhtrwo pou tha ekxwrisw tis pithanothtes
d = (max_value - min_value)/quant_levels ; % ypologizw to vima kvantismou
centers(1) = min_value + d/2 ; % ypologizw to prwto kentro

% ypologismos twn kentrwn kvantishs
for i =1:quant_levels-1
    centers(i+1) = centers(i) + d ; %ypologismos kentrwn perioxwn
end

% diadikasia kvantismou toy shmatos
while 1
    kmax = kmax + 1; % afksanw ton metrhth epanalipshs
    T(quant_levels+1) = max_value ; % arxikopoiw to panw orio
    T(1) = min_value;   % arxikopoiw to katw orio
    sum =zeros(quant_levels) ;
    counter=zeros(quant_levels) ; %arxikopoihsh counter emfanisewn
    for k=2:quant_levels
        T(k)=(centers(k-1)+centers(k))/2 ; %prosdiorismos orion
        %perioxon kvantisis
    end
    if (x(kmax)>=max_value) %Diadikasi kbantishs
    xq(kmax, 1) = 1;
    elseif (x(kmax)<min_value)
        xq(kmax, 1) = quant_levels ;
    else
        for i =1:length(x)
            for k=1:quant_levels
                if x(i)>T(k) && x(i)<=T(k+1)
                    p(k) = p(k) + 1;
                    xq(i, 1)=centers(k) ;
                    sum(k)=sum(k)+x(i) ;
                    counter(k)=counter(k)+1;
                    break;
                end
            end
        end
    end
    for k=1:quant_levels
        p(k) = p(k)/length(x) ;
        if (counter(k) > 0 )
            centers(k) = sum(k)/counter(k) ; %Ypologismos newn kentrwn
        end
    end
    % ypologizw thn paramorfosh se kathe epanalipsh
    D(kmax+1)=mean((x-xq).^2); 
    Sqnr(kmax) = mean(x.^2)/ D(kmax+1);
    % kai an einai mikroterh apo to 10^-16 tote stamataei h diadikasia
    a = 10^-16;
    if (abs(D(kmax+1)-D(kmax))<a)
        break;
    end
end
