%% ypologismos twn sqnr gia omoiomofro kai lloyd max kvadisti
x = wavread('speech.wav');
xq2my = my_quantizer(x,2,-1,1);
sqnr2my = sqnr(x,xq2my,2);
xq2lloyd = Lloyd_Max(x,2,-1,1);
sqnr2lloyd = sqnr(x,xq2lloyd,2);

xq4my = my_quantizer(x,4,-1,1);
sqnr4my = sqnr(x,xq4my,4);
xq4lloyd = Lloyd_Max(x,4,-1,1);
sqnr4lloyd = sqnr(x,xq4lloyd,4);

xq6my = my_quantizer(x,6,-1,1);
sqnr6my = sqnr(x,xq6my,6);
xq6lloyd = Lloyd_Max(x,6,-1,1);
sqnr6lloyd = sqnr(x,xq6lloyd,6);

