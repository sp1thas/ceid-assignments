[y,fs,N] = wavread('speech.wav');
[xq, centers] = my_quantizer(y,6,0,4);
plot(xq);
