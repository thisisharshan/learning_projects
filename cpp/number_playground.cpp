// program to check whether integer is odd or even, print's its square or cube
#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int a;
    float b;
    int y;

    cout << "Welcome to TUI number playground! \n\n";
    cout << "Select what you want to do:\n1.Verify whether the digit is odd or even \n2.Find the square of number \n3.Find the cube of number";
    cout << "\n\nChoose (1,2,3)\t";
    cin >> y;
    cout << endl;

    if (y==1){
        cout << "Enter a number:\t";
        cin >> a;
        cout << endl;

        if (a % 2 == 0){
            cout << "Even."<<"\n";
        }

        else{
            cout << "Odd."<<endl;
        }
    }

    else if (y==2){
        cout << "Enter a number:\t";
        cin >> a;
        cout << endl;

        b = pow(a,2);
        cout << "Square of "<<a<<" ="<<b<<endl;
    }

    else if (y==3){
        cout << "Enter a number:\t";
        cin >> a;
        cout << endl;

        b = pow(a,3);
        cout << "cube of "<<a<<" = "<<b<<endl;
    }

    else{
        cout << "Invalid option try again!";
    }

    return 0;
}