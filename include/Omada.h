#ifndef OMADA_H
#define OMADA_H
#include "Paikths.h"
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

        Paikths Paik[3]; //Pinakas me 3 antikeimena ths klass paikths

        int Action ( int DimX , Mpala M);

};

#endif
