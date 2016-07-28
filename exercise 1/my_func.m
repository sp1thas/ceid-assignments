
%% KWDIKAS GIA TO ERWTHA 4 . 3

function [ A ] = my_func(p,u,y,col) %dhmiourgw thn my_func ta orismata tis einai to "p"
                                       % ta dyo dianysmata "u" kai "y" kai h
                                       % timh "col"
    u1=transpose(y);
    b=y*u1;
    [n,m]=size(y);      %xrhsimopoiw thn diastash twn dyo dynasmatwn 
    
    if nargin==4;       %elegxw an o xrhsths exei eisagei kai ta 4 orismata 
                        % an nai h synthiki einai alithis kai tha paroume
                        % to apotelesma poy perigrafetai sto erwthma 4.2
            
                        
            
            I=zeros(n,1);   %orizw to dianisma I
            I(col,1)=1;     %kai vazontas asso sthn thesh i=col  
                            %exw sthn k-osth sthlh tou taftotikou mhtrwou I
                            %nxn
             for i=1:n
                 A(i,1)= (I(i)-(u(i)*u1(1,col)))^p; %ektelw thn praksh
             end
    else        %an twra o xrhsths den exei eisagei to orisma col
                % ypologizoume to apotelesma gia olo to mhtrwo I
     
    
    

        
         I=eye(n,n); %orizw to taftotiko mhtrwo I
         A=(I-b)^p;     %kai ektelw thn praksh 
         
         end        
end

