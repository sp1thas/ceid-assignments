
%% KWDIKAS GIA TO ERWTHMA 2iiB
 
k=1;                    % oi grammes kwdika pou den einai sxoliasmenes 
x=zeros(2,4);           % einai koines me prohgoumeno erwthma

for i=7:10
    
   n=2^i;
   
   A=rand(n,n);
   b=rand(n,1);
   L=zeros(n,n);
   U=zeros(n,n);
    tic;
        for j=1:100     % me afth th domh epanalipsis ektelw 100 fores
            lu(A);      % thn entolh lu wste na parw akribesterh timh
        end
    x(1,k)=toc/100;     %diairw me 100 gia na vrw ton meso oro
    tic;
        for j=1:100     %idia diadikasia gia to A*b
            A*b;
        end
    x(2,k)=toc/100;      
    
    k=k+1;
    
end
z = [128, 256, 512, 1024];
figure
plot(z, x(1,:), 'r*-')
hold on
plot(z, x(2,:), '-o')
hold off
xlabel('nxn elements')
ylabel('time (sec)')
title('LU - A*b (tictoc x100)')
legend('lu(a)','A*b')
    
