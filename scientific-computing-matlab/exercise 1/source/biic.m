
%% KWDIKAS GIA TO ERWTHMA 2 ii g



k=1;
x=zeros(2,4);

for i=7:10
    
   n=2^i;
   
   A=rand(n,n);
   b=rand(n,1);

   g = @() lu(A);          %orizw synarthsh g pou pou ektelei thn entolh lu
    x(1,k)=timeit(g,0);    %metraw to xrono ekteleshs me thn timeit kai 
                           %kataxwrw thn timh sthn prwth grammh tou mhtrwou
    
    h=@() A*b;
    x(2,k)=timeit(h,0);    %idia diadikasia gia ton ypologismo tou xronou 
                           %ekteleshs A*b
    k=k+1;
    
end
z = [128,256, 512,  1024];
figure
plot(z, x(1,:), 'r*-')
hold on
plot(z, x(2,:), '-o')
hold off
xlabel('nxn elements')
ylabel('time (sec)')
title('LU - A*b (timeit)')
legend('lu(a)','A*b')

     