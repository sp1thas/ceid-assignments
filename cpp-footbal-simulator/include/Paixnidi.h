/**
    Footbal Game
    Paixnidi.h
    Purpose: Paixnidi header file
    @author Simakis Panagiotis
    @version 1.2 08/09/2016
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
