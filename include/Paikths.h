#ifndef PAIKTHS_H
#define PAIKTHS_H
#include <string>
#include <iostream>
#include<cstdlib>
using namespace std;


class Paikths
{
    public:
        Paikths();


        int PX ; // syntetgmenes x toy paikth
        int PY ; // syntetagmenes y toy paikth

        string PlayerName ;
        int arithmosfans;
        int grkin ; //grammh kinhshs
        int grst ; //grammh stoxos

        int Metakinhsh (int PX , int Oriox) ;
        int Metabibash ();
        int EidikhKin () ;


};

#endif
