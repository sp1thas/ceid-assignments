#ifndef PAIKTIS_H
#define PAIKTIS_H
#include <string>
#include <iostream>
#include<cstdlib>
using namespace std;


class Paiktis
{
    public:
        Paiktis(); // constractor

        int AxisX ; // h grammh pou einai o Paiktis
        int AxisY ; // h sthlh pou einai o Paiktis
        string Name ; // onoma paikth
        int FansCount; // arithmos Fan
        int MovingLine ; // h grammh sthn opoia koineitai o Paiktis
        int TargetLine ; //grammh stoxos

        int Metakinhsh (int AxisX , int DimX) ;
        int Metabibash ();
        int EidikhKin () ;


};

#endif
