%% SYNARTHSH GIA TO YPOLOGISMOU THEORITIKOU KAI PEIRAMATIKOU SQNR

function [sqnr_exp, sqnr_theor] = sqnr(x, xq, N)
%prwta ypologizoume thn peiramatiki timh toy sqnr
sfalma = abs(xq-x);
sqnr_exp = 10*log10(sum(x.^2)/sum(sfalma.^2));

% kai sthn synexeia ypologizoume thn theoritikh timw toy sqnr
sqnr_theor = 1.76+6.02*N;

end