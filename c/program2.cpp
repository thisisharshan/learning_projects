#include <iostream>

//program to tell whether the student is distinction or first or second or third or fail.
using namespace std;

int main()
{
    float percent;
    int x;

    cout<<"Enter your Percentage:  ";
    cin>>percent;
    x = percent/10;

    switch(x){
        case 10:
        case 9:
        case 8:
        cout<<"You are Distinction. Congrats!";
        break;
        case 7:
        case 6:
        cout<<"You are first division. Congrats!";
        break;
        case 5:
        cout<<"You are second division. Congrats!";
        break;
        case 4:
        cout<<"You are third division. Congrats!";
        break;
        default:
        cout<<"You have failed. sorry...";
        }
        return 0;
        
}
