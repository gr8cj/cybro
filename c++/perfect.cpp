#include <iostream>
using namespace std;
int main(){
    int number=6;
    int sum=0;

    for(int i=1;i<number;++i){
        if(number%i==0){
            sum=sum+i;
        }
    }
    if(sum==number){
        cout<<"perfect number";

    }
    else{
        cout<<"not a perfect number";
    }
}