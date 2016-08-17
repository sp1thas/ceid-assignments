#include <iostream>
#include "Paixnidi.h"
#include "Paiktis.h"
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
        cout<<string(20,'-')<<"\n"<<string(20, '-')<<"\n\n\n";
        cin.ignore();

   }
    while ( Game.Rounds < GameRounds ) ;
    cout<<string(20,' ')<<"\n"<<string(7,' ')<<"Game Over"<<"\n"<<string(20,' ');

    return 0 ;
}
