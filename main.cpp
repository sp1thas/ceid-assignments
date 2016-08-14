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
    string synexise ;

    cout <<"Εισάγετε των αριθμό γύρων του παιχνιδιού...\n-> ";
    cin>>GameRounds ;

    int DimX = 6 ; // Oria toy ghpedoy
    int DimY = 6 ;
    int i,j;
    cout << "Οι διαστάσεις του γηπέδου είναι: " << DimX << " x " << DimY << endl;

    Paixnidi P; //Dhmiourgia antikeimenou paixnidi
    P.Rounds = 0 ;

    Mpala M;
    do {   //domh epanalhpshss gia thn ektelesh ths run turn

        P.Rounds += 1 ;
        cout <<"Γύρος: "<< P.Rounds <<endl;

        P.RunTurn(DimX,DimY,GameRounds);

        cout<<"για συνέχεια δώστε enter...\n";
        cout<<"---------------------------\n---------------------------\n\n\n";
        cin.ignore();
        for(i=0; i++; i<=5){
            for(j=0; j++; j<=5){
                cout<<"--\n|  |\n--";
            }
        }
   }


    while ( P.Rounds < GameRounds ) ;
    cout<<"---------------------------\n    ΤΕΛΟΣ ΠΑΙΧΝΙΔΙΟΥ      \n---------------------------\n";

    return 0 ;
}
