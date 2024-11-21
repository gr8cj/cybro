// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;
int main() {
    int a;
    int b;
    cin>>a;
    cin>>b;
    // this is fror 2
    if(a==1){
        if(b==1){
            cout<<"way for you to reach is 1-1 ";
        }
        else if(b==2){
            cout<<"way for you to reach is 1-2, 1-3-2";
        }
        else if(b==3){
            cout<<"way for you to reach is 1-3 , 1-2-3";
        }
        else{
            cout<<"wromg input";
        }
    }
    else if(a==2){
        if(b==1){
            cout<<"way for you to reach is 2-1 2-3-1 ";
        }
        else if(b==2){
            cout<<"way for you to reach is 2-2 ";
        }
        else if(b==3){
            cout<<"way for you to reach is 2-3 , 2-1-3 ";
        }
        else{
            cout<<"not an address";
        }
        
    }else if(a==3){
        if(b==1){
            cout<<"way for you to reach is 3-1 , 3-2-1";
        }
        else if(b==2){
            cout<<"way for you to reach is 3-2 , 3-1-2";
        }
        else if(b==3){
            cout<<"way for you to reach is 3-3";
        }
        else{
            cout<<" not and address";
        }
    }
    else{
      cout<<"wrong address";
    }
    
    return 0;
}