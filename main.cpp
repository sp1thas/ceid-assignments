#include <iostream>
#include "Paixnidi.h"
#include "Paikths.h"
#include "Mpala.h"
#include "Omada.h"
#include <cstdlib>

using namespace std;

int main()
{
    int GameRounds ;
    cout <<"Insert the number of rounds\n-> ";
    cin>>GameRounds ;

    int DimX = 6 ; // Oria toy ghpedoy
    int DimY = 6 ;
    int i,j;
    cout << "Playing field dimensions: " << DimX << " x " << DimY << endl;

    Paixnidi Game; //dimiourgia antikeimenou
    Game.Rounds = 0 ;

    Mpala M;
    do {   //domh epanalhpshss gia thn ektelesh ths run turn

        Game.Rounds += 1 ;
        cout <<"Round: "<< Game.Rounds <<endl;

        Game.RunTurn(DimX,DimY,GameRounds);

        cout<<"Press Enter to continue\n";
        cout<<"---------------------------\n---------------------------\n\n\n";
        cin.ignore();
        for(i=0; i++; i<=5){
            for(j=0; j++; j<=5){
                cout<<"--\n|  |\n--";
            }
        }
   }


    while ( Game.Rounds < GameRounds ) ;
    cout<<"---------------------------\n    GAME OVER      \n---------------------------\n";

    return 0 ;
}
