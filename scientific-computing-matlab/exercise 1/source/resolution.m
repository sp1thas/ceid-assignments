nmax = [100, 200, 500, 1000, 5000, 10000, 50000, 100000];
time = zeros(length(nmax));
for j= 1:length(nmax),
	tic
		for i = 1:nmax(j),
end
time(j) = toc./nmax(j);
end

figure
plot(nmax, time);
title(resolotion)