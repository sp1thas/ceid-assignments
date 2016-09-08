/**
    Footbal Game
    Paixnidi.h
    Purpose: Paixnidi header file
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
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

        int Rounds ;
        int RunTurn ( int DimX,int DimY,int Rounds) ;
    private:
        int i,j;
};

#endif
