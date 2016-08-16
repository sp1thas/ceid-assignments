#ifndef MPALA_H
#define MPALA_H
#include "Paikths.h"

class Mpala
{
    public:
        Mpala();

        int AxisX ; // syntetagmenh x ths mpalas
        int AxisY ;  // syntetagmenh y ths mpalas

        Paikths *trexwn;
        Paikths *prwhn ;

        int Anathesh (Paikths P, Mpala M) ; //klhsh ths synarthshs anatheshs

};

#endif
