//program to convert binary into decimal or decimal into binary.

#include <iostream>
#include<cmath>
using namespace std;

int main(){
    int dec, d, i, temp, ch;
    long int bin;

    dec=d=i=temp=0;

    cout<<"\tMenu\n1.Binary to decimal\n2.Decimal to binary\n3.EXIT\n\tCHOOSE WHAT DO YOU WANT TO DO: (1/2/3)";
    cin >> ch;

    do{
        switch(ch){
            case 1:
            cout << "Enter a binary number: ";
                cin >> bin;
                temp = bin;

            while (bin != 0){
                    d = bin%10;
                    dec = d + pow(2,i);
                    bin /= 10;
                    i++;
                }
            
            cout<< temp << "Changed to: "<<dec;
            break;

            case 2:
            cout <<"Enter a decimal number: ";
                cin >> dec;
                temp = dec;

            while (dec != 0){
                    d = dec % 2;
                    bin = d*pow(10,1);
                    dec /= 2;
                    i++;
                }

            cout << temp << "changed to:" << bin;
            break;

            case 3: break;

            default:
            cout << "Invalid arguement!";
        }

        
    }while (ch != 3);

    return 0;
}
