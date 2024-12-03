#include<iostream>
using namespace std;
int main(){
    char n;
   
    cout<<"Enter the Character:";
    cin>>n;
    
    if(n >= 'A' && n <= 'Z'){
        cout<< n <<"UpperCase"<<endl;
    }else if(n >= 'a' && n <= 'z'){
        cout<< n <<"LowerCase"<<endl;
    }else if(n >= '0' && n <= '9'){
        cout<< n <<"digit"<<endl;
    }
    else{
        cout<< n <<"special Character"<<endl;
    }
}