function [xq,centers,D] = lloyd_max(x,N,min_value,max_value)
kmax = 0;
l = 2^N; %epipeda kvantismoy
xq = zeros(length (x), 1) ; %arxikopoihsh
centers = zeros(l, 1); %arxikopoihsh kentrwn
D(1) = 0;
Sqnr(1) = 0;
d =(max_value - min_value)/l ; %bhma kvantismoy
centers(1) = min_value+d/2 ; %ypologismos kentroy prwtou epipedoy
for i =1:l -1
    centers(i+1) = centers(i)+d ; %ypologismos kentrwn perioxwn
end
while 1
    kmax = kmax + 1; %auksanoyme to bhma kata 1
    T(1) = min_value ; %arxikopoihsh katw oriou
    T(l+1) = max_value ; %arxikopoihsh panw oriou
    sum =zeros(l) ; %arxikopoihsh athroismatos
    counter=zeros(l) ; %arxikopoihsh counter emfanisewn
    for k=2: l
        T(k)=(centers(k-1)+centers(k))/2; %prosdiorismos orion
        %perioxon kvantisis
    end
    if ( x(kmax)>=max_value ) %Diadikasi kbantishs
        xq(kmax, 1) = 1;
    elseif (x(kmax)<min_value )
        xq(kmax, 1) = l ;
    else
        for i =1:length(x)
            for k=1: l
                if (x(i)>T(k))&&(x(i)<=T(k+1))
                xq(i,1)=centers(k) ;
                sum(k)=sum( k)+x(i) ;
                counter(k)=counter(k)+1;
                break;
            end
        end
    end
end
    for k=1: l
        if (counter(k) > 0 )
            centers(k)= sum(k)/counter(k) ; %Ypologismos newn kentrwn
        end
    end
    D(kmax+1)=mean((x-xq).^2); % Ypologismos paramorfosis
    Sqnr(kmax) = mean(x.^2)/D(kmax+1);
    if (abs(D(kmax+1)-D(kmax))<eps)% Elegxos paramorfosi einai sta epithimita l e v e
    break;
    end
end
figure(kmax) ;
plot(Sqnr ) ;
ylabel( 'SQNR' )
xlabel( 'Kmax' )
