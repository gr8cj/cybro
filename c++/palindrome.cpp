// Online C++ compiler to run C++ program online
#include <iostream>
 using namespace std;
int main() {
    int num=121;
    int comp=num;
    int rv=0;
    while(num!=0){
        rv=rv*10+num%10;
        num=num/10;
    }
    cout<<rv<<endl;
    if (rv==comp){
        cout<<"palindrome";
    }
    else{
        cout<<"not a palin drome";
    }
}