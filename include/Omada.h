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

        Paiktis Paik[3]; //Pinakas me 3 antikeimena ths klass Paiktis

        int Action ( int DimX , Mpala M);

};

#endif
