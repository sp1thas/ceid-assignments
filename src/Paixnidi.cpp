/**
    Footbal Game
    Paixnidi.cpp
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
Mpala M;

int Paixnidi :: RunTurn ( int DimX,int DimY,int GameRounds) {

    M.AxisX=rand()%DimX+1;//h mpala se kathe gyro kkineitai tyxaia
    M.AxisY=rand()%DimY+1;


int z,i,j, BallPos, k;

z=rand()%2;

if (z>1){ //action gia mia apo tis omades
    Team1.Action (DimX , M);
}
else{
    Team2.Action(DimX , M);
}

if ((M.AxisX==(DimX/2)||M.AxisX==((DimX/2)+1))&&(M.AxisY==1))
    {

        Team1.goals++;

        cout<<string(Team1.Name.size()+20, '-')<<Team1.Name<<"scored !\n";
}
    else if ((M.AxisX==(DimX/2)|| M.AxisX==((DimX/2)+1))&&(M.AxisY==DimY))
{

        Team2.goals++;
        cout<<string(Team1.Name.size()+20, '-')<<Team2.Name<<"scored !\n";
    }

   if(Rounds<GameRounds)
   {
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<string((Team1.Name.size()+Team2.Name.size()+4)/4, ' ')<<"\nSCORE\n";
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<" "<<Team1.Name<<"  "<<Team2.Name<<" \n";
       cout<<string(Team1.Name.length()/2, ' ')<<Team1.goals<<string((Team1.Name.size()+Team2.Name.size()/2), ' ')<<Team2.goals<<endl;
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";


   }

   else if (Rounds==GameRounds)
    {
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<string((Team1.Name.size()+Team2.Name.size()+4)/4, ' ')<<"FINAL SCORE\n";
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<" "<<Team1.Name<<"  "<<Team2.Name<<" \n";
       cout<<string(Team1.Name.length()/2, ' ')<<Team1.goals<<string((Team1.Name.size()+Team2.Name.size()/2), ' ')<<Team2.goals<<endl;
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
    }
    for (i=0; i<=DimX; i++){
        cout<<string(DimY*5-5, '.')<<"\n";
        BallPos = -1;
        for(j=0; j<=DimY; j++){

            if(i==M.AxisX && j==M.AxisY){
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
    cout<<string(DimY*5-5, '.')<<"\n";

 return 0 ;
};
