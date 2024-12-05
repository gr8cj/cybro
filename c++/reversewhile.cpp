// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;
int main() {
int num=1234;
int rv=0;

while(num!=0){
    rv=rv*10+num%10;
    num=num/10;
    // cout<<rv
    // cout<<rv<<endl;
    cout<<num<<endl;
}
// cout<<num<<endl;
cout<<rv;
    return 0;
}