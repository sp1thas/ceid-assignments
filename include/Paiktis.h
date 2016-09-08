/**
    Footbal Game
    Paiktis.h
    Purpose: Paiktis header file
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
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
        // oi syntetagmenes toy paikth
        int AxisX ;
        int AxisY ;
        // to onoma tou paikth
        string Name ;
        int FansCount; // arithmos Fan
        int MovingLine ; // h grammh sthn opoia koineitai o Paiktis
        int TargetLine ; //grammh stoxos

        //oi treis methodoi
        int Metakinhsh (int AxisX , int DimX) ;
        int Metabibash();
        int EidikhKin() ;


};

#endif
