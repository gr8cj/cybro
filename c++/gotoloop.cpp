#include <iostream>
using namespace std;
int main(){
    cout<<"a";
    cout<<"b";
    cout<<"c";
    lebel:
    int op=0;
    if(op==0){
        cout<<"d";
    }
    else if(op==2){
         cout<<"e";
    }
    else{
      goto lebel;  
    }
    
   
    
    cout<<"f";
    cout<<"g";
}