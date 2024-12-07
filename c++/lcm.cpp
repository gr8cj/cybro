#include <iostream>
using namespace std;
int main(){
   int num1=3;
   int num2=10;
   int mx=(num1>num2)? num1:num2;
    while(1){
        if(mx%num1==0 && mx%num2==0){
            cout<<mx;
            break;
        }
        ++mx;
    }
}