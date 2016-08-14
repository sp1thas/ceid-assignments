#include "Mpala.h"
#include "Paixnidi.h"
#include "Paikths.h"
#include <iostream>
#include <cstdlib>



using namespace std;

Mpala::Mpala()
{

}

int Mpala ::Anathesh (Paikths P, Mpala M) {

cout << "Συνάρτηση ανάθεσης..." << endl;

if ((M.MX -P.PX<2)&&(M.MY-P.PY<2))//Orizoume oti gia na parei th mpala tha prepei na nai sxetika konta
    {

M.MX=P.PX; //anathesh syntetagmenwn paikth sth mpala
M.MY=P.PY;
trexwn=&P;
cout << "Ο " << P.PlayerName << " έχει στην κατοχή του την μπάλα..." << endl;

}
 return 0 ;
};
