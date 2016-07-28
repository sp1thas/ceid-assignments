
%% KWDIKAS GIA TO ERWTHMA 3 (d') 

k=1;    
x=zeros(2,4);   
for j=7:1:10 
    
   n=2^j; 
   
   A=rand(n,n); 
   G=eye(n);    %taftotiko mhtrwo me diastaseis nxn
   I=sparse(G);     %me ayto to tropo sympiezontai ta mhdenika toy mhtrwou
    h=@() A*A;         %synarthsh gia ton pollaplasiasmo A*A             
   x(2,k)=timeit(h);   %metrhsh tou xronou ekteleshs A*A
   
   f=@() I*A;       %synarthsh gia ton xrono ekteleshs ths I*A
   x(1,k)=timeit(f);        %metrhsh tou xronou ekteleshs ths I*A
 
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
title('I*A, A*A')
legend('I*A','A*A')