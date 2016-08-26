%% KWDIKAS GIA TO ERWTHMA 1 (b') (iii)

rizesprog = zeros(6,15); %arxikopoiw to mhtrwo pou tha perasw ta apotelesmata
n = 15;
 for i = 1:1:6
     a = poly(n:-1:0);  %dhmiourgw gia kathe n tous syntelestes tou polywnymou
     b = roots(a);      %kai sthn synexeia ypologizw tis rizes tou polywnymoy
     for j=1:1:length(b)    
         rizesprog(i,j) = b(j); %kataxwrw ta apotelesmata sto mhtrwo rizesprog
     end
     n = n+2;
 end


    %dhmiourgw ena dianysma me tis pragmatikes rizes 
                    %dhladh:
% 0, 1, 2,...,15 gia n 15
% 0, 1, 2,...,15,16,17 gia n 17
% 0, 1, 2,...,17,18,19 gia n 19
% 0, 1, 2,...,19,20,21 gia n 21
% 0, 1, 2,...,21,22,23 gia n 23
% 0, 1, 2,...,23,24,25 gia n 25
%ara to dianysma me oles tis rizes tha einai to [0:1:25]
rizes=[0:1:25];
figure
title('Anaparastash twn rizwn tou polywnymou')
hold on
plot(real(rizesprog(1,1:16)) ,imag(rizesprog(1,1:16)), 'c*')
hold on
plot(real(rizesprog(2,1:18)) ,imag(rizesprog(2,1:18)), 'b*')
hold on
plot(real(rizesprog(3,1:20)) ,imag(rizesprog(3,1:20)), 'r*')
hold on
plot(real(rizesprog(4,1:22)) ,imag(rizesprog(4,1:22)), 'g*')
hold on
plot(real(rizesprog(5,1:24)) ,imag(rizesprog(5,1:24)), 'y*')
hold on
plot(real(rizesprog(6,1:26)) ,imag(rizesprog(6,1:26)), 'm*')
hold on 
plot(real(rizes), imag(rizes), 'ko')
legend('n = 15','n = 17', 'n = 19', 'n = 21', 'n = 23', 'n = 25', 'pragmatikes rizes')
xlabel('Pragmatiko meros')
ylabel('Fantastiko Meros')
hold off