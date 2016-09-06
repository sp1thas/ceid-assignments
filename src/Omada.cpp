/**
    Footbal Game
    Omada.cpp
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
#include "Omada.h"
#include "Paixnidi.h"
#include "Paiktis.h"
#include "Mpala.h"
#include <cstdlib>
#include <iostream>

using namespace std;

Omada::Omada()
{

  cout<<"Insert the name of your team [Default Name: Edesaikos]\n->  ";
  getline(cin, Name);
  if (Name.empty()){
    Name = "Edesaikos";
  }
  cout<<"Your team's name: "<<Name <<endl;
}


int Omada ::Action (int DimX , Mpala M){
    cout<<"Game starting!"<<endl;
    for (int i=0 ; i=2 ; i ++ ){
      int x = rand() % 100 ; //tyxaios arithmos ews 100 gia na prosomeiwsoume tis pithanothtes
      if ((x<=34) && (x>=0)) {
        cout<<"Moving"<<endl;
        Paik[i].Metakinhsh(3,DimX);
        break;
      }

      else if ((x>=35) && (x<=69)) {
        cout<<"Transfer"<<endl;
        Paik[i].Metabibash();
        break;
      }

      else {
        cout<<"Special move"<<endl;
        Paik[i].EidikhKin();
        break;
      }
      M.Anathesh(Paik[i],M); //kaloume thn synarthsh anatheshs gia kathe paikth
    }
};
