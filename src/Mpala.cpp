/**
    Footbal Game
    Mpala.cpp
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
#include "Mpala.h"
#include "Paixnidi.h"
#include "Paiktis.h"
#include <iostream>
#include <cstdlib>



using namespace std;

Mpala::Mpala()
{

}

int Mpala ::Anathesh (Paiktis P, Mpala M) {

cout << "Assignation function" << endl;

if ((M.AxisX -P.AxisX<2)&&(M.AxisX-P.AxisY<2))//Orizoume oti gia na parei th mpala tha prepei na nai sxetika konta
{
      // pername tis syntetagmenes toy paikth sth mpala
      M.AxisX=P.AxisX;
      M.AxisY=P.AxisY;
      trexwn=&P;
      cout<< P.Name << " has the ball in his possession" << endl;
}
 return 0 ;
};
