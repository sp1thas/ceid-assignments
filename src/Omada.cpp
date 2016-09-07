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
  // constractor ths omadas opou zhteitai to onoma ths omadas
  cout<<"Insert the name of your team [Default Name: Edesaikos]\n->  ";
  getline(cin, Name);
  // orizoume mia default timh otan o xrhsths dwsei enter
  if (Name.empty()){
    Name = "Edesaikos";
  }
  cout<<"Your team's name: "<<Name <<endl;
}


int Omada ::Action (int DimX , Mpala M){
    cout<<"Game starting!"<<endl;
    // h methodos action ekteleitai gia olous tous paiktes kathe omadas
    for (int i=0 ; i=3 ; i ++ ){
      int x = rand() % 100 ; //tyxaios arithmos ews 100 gia na prosomeiwsoume tis pithanothtes
      // me 35% pithanotita tha ginei metakinisi
      if ((x<=34) && (x>=0)) {
        cout<<"Moving"<<endl;
        Paik[i].Metakinhsh(3,DimX);
        break;
      }
      // me 35% pithanothta tha ginei metavivash
      else if ((x>=35) && (x<=69)) {
        cout<<"Transfer"<<endl;
        Paik[i].Metabibash();
        break;
      }
      // me 30% pithanotita tha ginei eidiki kinhsh
      else {
        cout<<"Special move"<<endl;
        Paik[i].EidikhKin();
        break;
      }
      M.Anathesh(Paik[i],M); //kaloume thn synarthsh anatheshs gia kathe paikth
    }
};
