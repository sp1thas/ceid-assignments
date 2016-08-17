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

      M.AxisX=P.AxisX; //anathesh syntetagmenwn paikth sth mpala
      M.AxisY=P.AxisY;
      trexwn=&P;
      cout<< P.Name << " has the ball in his possession" << endl;
}
 return 0 ;
};
