#include <iostream>
using namespace std;
int main(){
    int unit=235
    ;
    // cin>>unit;
    if(unit>0 && unit<50){
        cout<<(unit*10);
    }
    // else if(unit<0 && unit>50){
        
    //     cout<<(unit*10);
    // }
    else if(unit>50 && unit<100){
        
        cout<<(unit-10)*20+50*20;
    }
    else if(unit>100 && unit<150){
        
        cout<<(unit-50)*30+50*20+50*30;
    }
    else if (unit>150){
        
        cout<<(unit-150)*40+50*20+50*30+50*40+50*10;
        
    }
    
}