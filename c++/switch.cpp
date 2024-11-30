#include <iostream>
using namespace std;
int main() {
    int op;
    cout<<"what do you want fruit or vegitable";
    cin>>op;
    switch(op){
        case 1:cout<<"fruit 1.orange 2.apple";
            cin>>op;
            switch(op){
                case 1:cout<<"orange";
                break;
                case 2:cout<<"apple";
                break;
                default:cout<<"invalid";
            }
            break;
        
        case 2:cout<<"enter vegitable 1.allu 2 bhalu";
        cin>>op;
        switch(op){
                case 1:cout<<"allu";
                break;
                case 2:cout<<"bhalu";
                break;
                default:cout<<"invalid";
            }
            break;
        default:cout<<"invalid";
    }

    return 0;
}