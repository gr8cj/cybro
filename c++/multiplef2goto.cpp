    #include <iostream>
    using namespace std;
    int main(){
        int op=1;
        lebel:
        if(op<11){
            cout<<2*op<<endl;
             op++;
          goto lebel;  
        }
    }