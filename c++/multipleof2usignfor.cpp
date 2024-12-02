    #include <iostream>
    using namespace std;
    int main(){
        // ++i is faster then i++ becase of steps ++i is 1 step
       for(int i=1;i<=10;++i){
           cout<<i*2<<endl;
       }
    }