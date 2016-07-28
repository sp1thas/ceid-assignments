function [xq,centers,D]=Lloyd_Max1(x,N,min_value,max_value)
Rk = 2^N;
D = (max_value-min_value)/(Rk);
centers = max_value - D/2-D*((1:Rk)-1);
xq = floor((max_value-x)/D)+1;
L = length(centers);
xq = xq-(xq==L+1);
i=1;
D(i)=(centers(1)-centers(L))/L;
error = 1;
kmax=30;
% while(error>0.00001)
for i=1:kmax
    i=i+1;
    T=(centers(1:L-1)+centers(2:L))/2;
    D(i)=mean((x-centers(xq)').^2);
    for k=2:L-1
        I=sum((x<T(k-1)).*(x>=T(k)).*x);
        if (sum((x<T(k-1)).*(x>=T(k)))==0 )
        centers(k)=(T(k-1)+T(k))/2;
        else
        centers(k)=I/sum((x<T(k-1)).*(x>=T(k)));
        end
    end
    xq=xq*0;
    for k=2:L-1
        xq=xq+(x<T(k-1)).*(x>=T(k)).*k;
    end
    xq=xq+(x>=T(1));
    xq=xq+(x<=T(L-1))*L;
    error=(D(i)-D(i-1));
    D = mean(x-xq).^2;
    sqnr_exp = mean(x.^2)/D;
    sqnr_exp = 10*log10(sqnr_exp);
    if error>0.000001
        break;
    end
end
figure(kmax);s
plot(sqnr_exp);