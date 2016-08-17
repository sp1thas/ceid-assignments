#ifndef PAIXNIDI_H
#define PAIXNIDI_H
#include <iostream>
#include "Paixnidi.h"
#include "Paiktis.h"
#include "Mpala.h"
#include "Omada.h"
#include <cstdlib>


class Paixnidi
{
    public:

        Paixnidi(); //

        int Rounds,i,j ;
        int RunTurn ( int DimX,int DimY,int Rounds) ;
};

#endif
