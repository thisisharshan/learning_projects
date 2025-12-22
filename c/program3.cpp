#include <iostream>
using namespace std;
int main()
{
    int n,num,digit,rev = 0;
    cout << "Enter a positive digit: ";
    cin >> num;
    cout << "\nEntered digit is: "<< num<<"\n";
    n = num;

    while (num){
        digit = num%10;
        rev = (rev*10)+digit;
        num = num/10;
    }

    cout << "Reversed digit is: " << rev << "\n";

    //checking if it's a palindrom

    if (n == rev){
    cout << "The digit is palindrome\n";
}
    else{
    cout << "The digit isn't a palindorome\n";
}
    return 0;
}
