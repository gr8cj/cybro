// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;
int main() {
    int n=5;
    int fact=1;
    for(int i=1;i<=n;i++){
        
        fact*=i;
        // n--;
    }
      cout<<fact;  
    return 0;
}