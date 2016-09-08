/**
    Footbal Game
    Mpala.cpp
    Purpose: Ylopoihsh ths klashs Mpala kai twn methodwn ths
    @author Simakis Panagiotis
    @version 1.2 08/09/2016
*/
#include "Mpala.h"
#include "Paixnidi.h"
#include "Paiktis.h"
#include <iostream>
#include <cstdlib>
using namespace std;

// constractor
Mpala::Mpala()
{

}

// methodos anatheshs
int Mpala ::Anathesh (Paiktis Player, Mpala Ball) {
    cout << "Assignation function\n";
    /** elegxoume an h mpala einai konta ston paikti
        gia na mporesei na erthei sthn katoxh tou */

    if ((Ball.AxisX - Player.AxisX<2)&&(Ball.AxisX - Player.AxisY<2)){
          // pername tis syntetagmenes toy paikth sth mpala
          Ball.AxisX=Player.AxisX;
          Ball.AxisY=Player.AxisY;
          trexwn= &Player;
          cout<< Player.Name << " has the ball..\n";
        }
        return 0 ;
};
