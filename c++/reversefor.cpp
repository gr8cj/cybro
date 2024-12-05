// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;
int main() {
    int n=123456;
    int rv=0;
    for(;n!=0;){
    rv=rv*10+n%10;
    n=n/10;
    }
    cout<<rv;
    return 0;
}