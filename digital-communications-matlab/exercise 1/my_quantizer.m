%% SYNARTHSH KWDIKOPOIHSH me OMOIOMORFO KVANTISTH
function [xq,centers, p] = my_quantizer(x,N,min_value,max_value)

quant_levels = 2^N;	% epipeda kvantismou
vima = (max_value - min_value)/quant_levels;	% vima kvantismou
xq = zeros(length(x),1); % arxiko to dianysma me to shma eksodou me vash th diastash toy dianismatos eisodou
centers = min_value + vima/2; % ypologizw to kentrou tou prwtou epipedou
p = zeros(1,quant_levels);  %arxiko to mhtrwo me tis pithanothtes emfanishs

% ypologizw ta kentra kvantishs
for i=1:1:quant_levels-1
	centers(i+1) = centers(i) + vima;
end

% kvantisw tis times toy shmatos
for i=1:1:length(x)
	for j=1:1:quant_levels
		if x(i)<=min_value + j*vima;
			xq(i) = centers(j);
            p(j) = p(j) + 1;
			break;
		end
	end
end

% ypologizw tis pithanothtes
p = p./length(x);

end