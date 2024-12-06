/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
using namespace std;
int main()
{
    int sum=0;
    int n=153;
    int num=n;
    
    while(n!=0){
        
        int a=n%10;
        n=n/10;
        int b=n%10;
        n=n/10;
        int c=n%10;
        n=n/10;
        a=a*a*a;
        b=b*b*b;
        c=c*c*c;
        sum=a+b+c;
        
    }
    if(sum==num){
        cout<<"armstrong";
    }
    else{
        cout<<"not an arm strong";
    }

}