%% erotima 2c: peiramatikos ypologismos ypologismos ths pithanothtas emfanishs twn kentrwn kvantishs
x = wavread('speech.wav');
[xq2lloyd,centers] = Lloyd_Max(x,2,-1,1);
[xq4lloyd,centers] = Lloyd_Max(x,4,-1,1);
[xq6lloyd,centers] = Lloyd_Max(x,6,-1,1);


freq2bits_exp = exp_freq(xq2lloyd);
freq4bits_exp = exp_freq(xq4lloyd);
freq6bits_exp = exp_freq(xq6lloyd);
