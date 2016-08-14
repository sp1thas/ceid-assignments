#include "Omada.h"
#include "Paixnidi.h"
#include "Paikths.h"
#include "Mpala.h"
#include <cstdlib>
#include <iostream>

using namespace std;

Omada::Omada()
{

cout<<"Insert the name of your team\n->  "<<endl;
        cin>>Name ;
        cout<<"Your team's name:  "<<Name <<endl;
}


int Omada ::Action (int DimX , Mpala M){
    cout<<"Game starting!"<<endl;
    for (int i=0 ; i=2 ; i ++ ){
      int x = rand() % 100 ; //tyxaios arithmos ews 100 gia na prosomeiwsoume tis pithanothtes
      M.Anathesh(Paik[i],M); //kaloume thn synarthsh anatheshs gia kathe paikth

      if (x>70) {
        cout<<"Moving"<<endl;
        Paik[i].Metakinhsh(3,DimX);
        break;
      }

      else if (x>35) {
        cout<<"Transfer"<<endl;
        Paik[i].Metabibash();
        break;
      }

      else {
        cout<<"Special move"<<endl;
        Paik[i].EidikhKin();
        break;
      }

    }
};
