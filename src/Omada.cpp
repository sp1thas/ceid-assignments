#include "Omada.h"
#include "Paixnidi.h"
#include "Paikths.h"
#include "Mpala.h"
#include <cstdlib>
#include <iostream>

using namespace std;

Omada::Omada()
{

cout<<"Εισάγετε το όνομα της ομάδας σας...\n->  "<<endl;
        cin>>TeamName ;
        cout<<"Το όνομα της ομάδας σας είναι: "<<TeamName <<endl;
}


int Omada ::Action (int DimX , Mpala M){
    cout<<"Ξεκινάει το παιχνίδι!"<<endl;
    for (int i=0 ; i=2 ; i ++ ){
      int x = rand() % 100 ; //tyxaios arithmos ews 100 gia na prosomeiwsoume tis pithanothtes
      M.Anathesh(Paik[i],M); //kaloume thn synarthsh anatheshs gia kathe paikth

      if (x>70) {
        cout<<"Μετακίνηση"<<endl;
        Paik[i].Metakinhsh(3,DimX);
        break;
      }

      else if (x>35) {
        cout<<"Μεταβίσαση"<<endl;
        Paik[i].Metabibash();
        break;
      }

      else {
        cout<<"Ειδική κίνηση"<<endl;
        Paik[i].EidikhKin();
        break;
      }

    }
};
