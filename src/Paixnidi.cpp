#include "Paixnidi.h"
#include "Paikths.h"
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

    M.MX=rand()%DimX+1;//h mpala se kathe gyro kkineitai tyxaia
    M.MY=rand()%DimY+1;


int z;

z=rand()%10;

if (z>5){ //action gia mia apo tis omades
    Team1.Action (DimX , M);
}
else{
    Team2.Action(DimX , M);
}

if ((M.MX==(DimX/2)||M.MX==((DimX/2)+1))&&(M.MY==1))
    {

        Team1.goals++;

        cout<<string(Team1.Name.size()+20, '-')<<Team1.Name<<"scored !\n";
}
    else if ((M.MX==(DimX/2)|| M.MX==((DimX/2)+1))&&(M.MY==DimY))
{

        Team2.goals++;
        cout<<string(Team1.Name.size()+20, '-')<<Team2.Name<<"scored !\n";
    }

   if(Rounds<GameRounds)
   {
       cout<<string(Team1.Name.size()+Team2.Name.size()+4, '-')<<"\n";
       cout<<string((Team1.Name.size()+Team2.Name.size()+4)/4, ' ')<<"SCORE\n";
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


 return 0 ;
};
