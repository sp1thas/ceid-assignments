/**
    Footbal Game
    Omada.h
    Purpose: Omada header file
    @author Simakis Panagiotis
    @version 1.2 08/09/2016
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
        int Lathi, Pases, Goals;
        // Pinakas me tessera antikeimena klasshs Paikth
        Paiktis Paik[4];

        int Action ( int DimX , Mpala M);

};

#endif
