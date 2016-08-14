#ifndef MPALA_H
#define MPALA_H
#include "Paikths.h"

class Mpala
{
    public:
        Mpala();

        int MX ; // syntetagmenh x ths mpalas
        int MY ;  // syntetagmenh y ths mpalas

        Paikths *trexwn;
        Paikths *prwhn ;

        int Anathesh (Paikths P, Mpala M) ; //klhsh ths synarthshs anatheshs

};

#endif
