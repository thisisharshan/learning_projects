//calculator to operations(+, -, *, /)
#include <iostream>
#include <string>
using namespace std;

float c;

void add(float a, float b){
    c = a + b;
    cout << a << "+" << b << "=" << c;
}

void subtract (float a, float b){
    c = a - b;
    cout << a << "-" << b << "=" << c;
}

void multiply (float a, float b){
    c = a*b;
    cout << a << "*" << b << "=" << c;
}

void  divide (float a, float b){
    c = a/b;
    cout << a << "/" << b << "=" << c;
}

int main (){
    float x,y;
    string op;
    cout << "Welcome to TUI calculator!\n\n";
    cout << "Enter two digits:\t";
    cin >> x >> y;
    cout << endl;
    cout << "Choose operation (+ , - , * , /) :\t";
    cin >> op;

    if (op == "+" ){
        add(x,y);
    }

    else if (op == "-"){
        subtract(x,y);
    }

    else if (op == "*"){
        multiply(x,y);
    }

    else if (op == "/"){
        divide(x,y);
    }
    else {
        cout << "Invalid operation";
    }

    return 0;
}