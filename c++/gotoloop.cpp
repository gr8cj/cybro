#include <iostream>
using namespace std;
int main(){
    cout<<"a";
    cout<<"b";
    cout<<"c";
     int op=10;
    lebel:
    if(op==20){
        cout<<"d";
    }
    
    else{
        cout<<op;
        op++;
      goto lebel;  
    }
    
   
    
    cout<<"f";
    cout<<"g";
}