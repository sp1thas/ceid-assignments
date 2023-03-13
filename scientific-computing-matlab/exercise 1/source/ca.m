
%% KWDIKAS GIA TO ERWTHMA 3 (a') iii.

k=1;    
x=zeros(3,4);%to mhtrwo pou kataxwrw tis metriseis
for i=7:10, %domh epanalipsis gia kathe diaforetiko n
    
   n=2^i; 
   
   A=rand(n,n); %mhtrwo gia to ypologismo tou tou 1ou kai 2ou erwthmatos  
   b=rand(n,1); 
   
   
        
   
    g=@() mldivide(A,b);   %g h synarthsh gia epilysh tou systhmatos gia to tyxaio mhtrwo
    x(1,k)=timeit(g,0);        %metrhsh tou xronou ekteleshs
   
        La=tril(A);
   f=@() mldivide(La,b);    %f h synarthsh gia thn epilysh tou systhmatos gia to trigwniko mhtrwo 
    x(2,k)=timeit(f,0);        %metrhsh tou xronou ekteleshs
   
    B=rand(n,n); %gia to trito erwthma xrhsimopoiw to mhtrwo B
    Lb=tril(B);
    a=randperm(n);  
	C=zeros(n,n);   

        for j=1:n
            C(a(j),j)=1;    %me afth th for elegxw tis allages kai opou vazw asso
        end
        
		D=C*Lb; %ypologismos tou psyxologika katw trigonikou mhtrwou

    h=@()mldivide(D,b);               %h h synarthsh gia thn epilysh tou systhmatos me katw psyxologiko mhtrwo
    x(3,k)=timeit(h,0);        %metrhsh tou xronou ekteleshs
   
    
 
    k=k+1;
    
end

y = [128,256, 512,  1024];
figure
plot(y, x(1,:), 'r*-')
hold on
plot(y, x(2,:), '-o')
plot(y, x(3,:), 'gx-')
hold off
xlabel('nxn elements')
ylabel('time (sec)')
title('Ax = b')
legend('random matrix','lower triangular matrix', 'psychologically lower triangular matrix')
    
