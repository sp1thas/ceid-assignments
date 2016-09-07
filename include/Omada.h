/**
    Footbal Game
    Omada.h
    Purpose: Omada header file
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
#ifndef OMADA_H
#define OMADA_H
#include "Paiktis.h"
#include <iostream>
#include "Paixnidi.h"
#include "Mpala.h"
#include "Omada.h"
#include <cstdlib>


using namespace std;

class Omada
{
    public:
        Omada();

        string Name ;
        int lathi ;
        int pases ;
        int goals ;

        Paiktis Paik[4]; //Pinakas me 4 antikeimena ths class Paiktis

        int Action ( int DimX , Mpala M);

};

#endif
