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

        cout<<"Εισάγετε το όνομα του παίκτη\n-> ";
        cin>>PlayerName;

}

int Paikths :: Metakinhsh (int PX , int DimX) {


     {
        PX=rand() % DimX ; //tyxaia metakinhsh ston aksona x
    }

    cout<<"Ο παίκτης κινείται και οι συντεταγμένες του είναι: "<<PX <<", " <<PY<<endl;

    return 0 ;
};

int Paikths:: Metabibash (){

cout<<"Συνάρτηση μεταβίσασης..."<<endl;

return 0;

};

int Paikths ::EidikhKin () {


cout<<"Εκτέλεση ειδικής κίνησης... "<<endl;

return 0;
};
