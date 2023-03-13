%% me afth th synarthsh ypologizw thn pithanothta emfanishs toy kathe kentroy kvantishs

function [ freq ] = exp_freq( xq )
uniq = unique(xq);
freq = [uniq,histc(xq(:),uniq)];
freq(:,2) = freq(:,2)./length(xq);
freq(:,1) = [];
disp(freq);

end

