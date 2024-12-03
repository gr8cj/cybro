#include <iostream>
using namespace std;
int main(){
    int n;
    cin>>n;
    if(n>="a" && n<="z"){
        if(n=="a" || n=="e" || n=="i" || n=="o" || n=="u"){
            cout<<"vovel";
        }
        else{
            cout<<"conconent";
        }
        else if(n>="1" &&n<="2"){
            cout<<"number";
        }
        else{
            cout<<"special characte";
        }
    }
}