
%% KWDIKAS GIA TO ERWTHMA 2iiA

k=1; %metrhths me ton opoio kataxwrw 
x=zeros(2,4);   % tis metrhseis sto mhtrwo "x"

for i=7:10  % 4 epanalhpseis oses kai oi diastaseis pou pernoun 
            % ta mhtrwa
    
   n=2^i;   %xrhsimopoiw gia to i tis times 7 ews 10 
            % wste na ypologizw to n apeftheias
   
            
   A=rand(n,n);     % mhtrwo nxn 
   b=rand(n,1);     %dianysma n
   L=zeros(n,n);    %arxikopoiw ta dianysmata L, U poy xrhsimopoiei
   U=zeros(n,n);    % h synarthsh lu gia na mhn katanalwnontai poroi
                    % sthn synexeia
   
    tic
    lu(A);          %metrhsh ekteleshs ths lu kai kataxwrish twn 
    x(1,k)=toc;     %apotelesmatwn sthn prwth grammh tou mhtrwou "x"
    
    tic
    A*b;            %metrhsh ekteleshs A*b kai kataxwrish twn 
    x(2,k)=toc;     % twn apotelesmatwn sthn defterh grammh tou mhtrwou "x"
    k=k+1;
    
end
y = [128,256, 512,  1024];     %orizw tis times sto aksona y me to mhtrwo "y"  
figure
plot(y, x(1,:), 'r*-')         % to diagramma pou apeikonizei ton xrono ekteleshs ths entolhs lu(A)
                               % oi times ston aksona x einai oi times pou
                               % einai kataxwrimenes sthn prwth seira tou
                               % mhtrwou "x"
hold on
plot(y, x(2,:), '-o')          % to diagramma pou apeikonizei ton xrono ekteleshs ths entolhs lu(A)
                               % oi times ston aksona x einai oi times pou
                               % einai kataxwrimenes sthn prwth seira tou
                               % mhtrwou "x"
hold off
xlabel('nxn elements')         %label gia ton aksona x
ylabel('time (sec)')           %label gia ton aksona y
title('LU - A*b (tictoc)')              %o titlos tou diagrammatos
legend('lu(a)','A*b')          %perigrafh tou kathe grafimatos
    
    