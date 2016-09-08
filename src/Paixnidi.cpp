/**
    Footbal Game
    Paixnidi.cpp
    Purpose: Ylopoihsh ths klashs Paixnidi kai twn methodwn ths
    @author Simakis Panagiotis
    @version 1.1 19/08/16
*/
#include "Paixnidi.h"
#include "Paiktis.h"
#include "Mpala.h"
#include "Omada.h"
#include <iostream>
#include <string.h>

using namespace std;

Paixnidi::Paixnidi()
{

}

Omada Team1;
Omada Team2; // antikeimena ths klashs omada kai mpala
Mpala Ball;

int Paixnidi :: RunTurn ( int DimX,int DimY,int GameRounds) {

    Ball.AxisX=rand()%DimX;//h mpala se kathe gyro kkineitai tyxaia
    Ball.AxisY=rand()%DimY;


int z,i,j, BallPos, k;

z=rand()%2;

if (z>1){ //action gia mia apo tis omades
    Team1.Action (DimX , Ball);
}
else{
    Team2.Action(DimX , Ball);
}

if ((Ball.AxisX==(DimX/2)||Ball.AxisX==((DimX/2)+1))&&(Ball.AxisY==1))
    {

        Team1.Goals++;

        cout<<string(Team1.Name.size()+20, '-')<<Team1.Name<<"scored !\n";
}
    else if ((Ball.AxisX==(DimX/2)|| Ball.AxisX==((DimX/2)+1))&&(Ball.AxisY==DimY))
{

        Team2.Goals++;
        cout<<string(Team1.Name.size()+20, '-')<<Team2.Name<<"scored !\n";
    }
    // ektypwsh toy score gyrou
   if(Rounds<GameRounds)
   {
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<string((Team1.Name.size()+Team2.Name.size()+4)/4, ' ')<<"\nSCORE\n";
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<" "<<Team1.Name<<"  "<<Team2.Name<<" \n";
       cout<<string(Team1.Name.length()/2, ' ')<<Team1.Goals<<string((Team1.Name.size()+Team2.Name.size()/2), ' ')<<Team2.Goals<<endl;
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";


   }
   // ektypwsh toy telikou score
   else if (Rounds==GameRounds)
    {
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<string((Team1.Name.size()+Team2.Name.size()+4)/4, ' ')<<"FINAL SCORE\n";
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<" "<<Team1.Name<<"  "<<Team2.Name<<" \n";
       cout<<string(Team1.Name.length()/2, ' ')<<Team1.Goals<<string((Team1.Name.size()+Team2.Name.size()/2), ' ')<<Team2.Goals<<endl;
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
    }
    /** ektypwsh toy xarth
              template:
              1   2   3   4   5   6
            .........................
          1 :   :   :   :   :   :   :
            .........................
          2 :   :   :   :   :   :   :
            .........................
          3 :   :   :   :   :   :   :
            .........................
          4 :   :   :   :   :   :   :
            .........................
          5 :   :   :   :   :   :   :
            .........................
          6 :   :   :   :   :   :   :
            .........................
          7 :   :   :   :   :   :   :
            .........................
          8 :   :   :   :   :   :   :
            .........................
          9 :   :   :   :   :   :   :
            .........................
            :   :   : * :   :   :   :
            .........................
    */
    cout<<string(4,' ')
        <<'1'<<string(3,' ')
        <<'2'<<string(3,' ')
        <<'3'<<string(3,' ')
        <<'4'<<string(3,' ')
        <<'5'<<string(3,' ')
        <<'6'<<string(2,' ')<<'\n';
    for (i=0; i<=DimX; i++){
        cout<<string(2,' ')<<string(DimY*5-5, '.')<<"\n";
        BallPos = -1;
        cout << i+1<<" ";
        for(j=0; j<DimY; j++){

            if(i==Ball.AxisX && j==Ball.AxisY){
                    BallPos = j;
            }
        }
        if (BallPos > -1){
            for(k=1; k<BallPos; k++){
                cout<<":   ";
            }
            cout<<": * :";
            for(k=BallPos; k<DimY; k++){
                cout<<"   :";
            }
            cout<<"\n";
        }
        else{
            cout<<":   :   :   :   :   :   :\n";
        }


    }
    cout<<string(2,' ')<<string(DimY*5-5, '.')<<"\n";

 return 0 ;
};
