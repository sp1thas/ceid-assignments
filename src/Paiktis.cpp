/**
    Footbal Game
    Paiktis.cpp
    Purpose: Ylopoihsh ths klashs Paiktis kai twn methodwn ths
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


//constractor
Paiktis::Paiktis(){
        // eisagoume ton paikti se mia tyxaia grammh
        AxisY= rand() % 9  ;
        // orizoume ena tyxaio arithmo fan
        int FansCount = rand() % 100 ;
        /** eisagwgh toy onomatos toy paikth
            an o xristis den dwsei kapoio onoma
            tote anatithetai h default metavliti
        */
        cout<<"Insert player's name [default name: xasogoalis{id}]\n-> ";
        getline(cin, Name);
        // elegxos an o xrhsths edwse mono to xaraktira allaghs grammhs
        if (Name.empty()){
          Name = "Xasogoalis" + AxisY;
        }
}
// methodos metakinhshs
int Paiktis :: Metakinhsh (int AxisY , int DimY) {
        AxisY=rand() % DimY ; //tyxaia metakinhsh ston aksona x
        cout<<"Player moving.. His current coordinates are: "<<AxisX <<", "<<AxisY<<endl;
        return 0 ;
};

// methodos metavivashs
int Paiktis:: Metabibash (){
        // den ylopoihthike
        cout<<"Transfer function..."<<endl;
        return 0;

};
// methodos eidikis kinhshs
int Paiktis ::EidikhKin () {
        // den ylopoihthike
        cout<<"Special move action "<<endl;
        return 0;
};
