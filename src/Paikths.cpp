#include "Paikths.h"
#include "Mpala.h"
#include "Paixnidi.h"
#include "Omada.h"

#include <iostream>
#include <cstdlib>
using namespace std;

Paikths::Paikths()

{

        PY= rand() % 6  ;
        int arithmosfan = rand() % 100 ;

        cout<<"Insert player's name\n-> ";
        cin>>PlayerName;

}

int Paikths :: Metakinhsh (int PX , int DimX) {


     {
        PX=rand() % DimX ; //tyxaia metakinhsh ston aksona x
    }

    cout<<"Player moving.. His current coordinates are: "<<PX <<", " <<PY<<endl;

    return 0 ;
};

int Paikths:: Metabibash (){

cout<<"Transfer function..."<<endl;

return 0;

};

int Paikths ::EidikhKin () {


cout<<"Special move action "<<endl;

return 0;
};
