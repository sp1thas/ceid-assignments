/**
    Footbal Game
    Paiktis.cpp
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
#include "Paiktis.h"
#include "Mpala.h"
#include "Paixnidi.h"
#include "Omada.h"

#include <iostream>
#include <cstdlib>
using namespace std;

Paiktis::Paiktis()

{

        AxisY= rand() % 6  ;
        int arithmosfan = rand() % 100 ;

        cout<<"Insert player's name\n-> ";
        cin>>Name;

}

int Paiktis :: Metakinhsh (int AxisX , int DimX) {


     {
        AxisX=rand() % DimX ; //tyxaia metakinhsh ston aksona x
    }

    cout<<"Player moving.. His current coordinates are: "<<AxisX <<", "<<AxisY<<endl;

    return 0 ;
};

int Paiktis:: Metabibash (){

cout<<"Transfer function..."<<endl;

return 0;

};

int Paiktis ::EidikhKin () {


cout<<"Special move action "<<endl;

return 0;
};
