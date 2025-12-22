#include <iostream>
using namespace  std;

int main(){
    int salary,hra,da,gross;
    cout << "Enter the basic salary"<<"\n";
    cin>>salary;

    if (salary < 25000){
        hra = salary * 20/100;
        da = salary * 80/100;
    }

    else if (salary >= 25000 && salary < 40000){
        hra = salary * 25/100;
        da = salary * 90/100;
    }

    else if (salary >= 40000){
        hra = salary * 30/100;
        da = salary * 95/100;
    }

    gross = salary + da + hra;

    cout<<"Salary is: "<<salary<<"\n";
    cout<<"Human rent allowance is: "<<hra<<"\n";
    cout<<"Dearness allowance is: "<<da<<"\n";
    cout<<"\t"<<"---------------"<<"\n";
    cout<<"\t"<<"Gross salary is: "<<gross<<"\n";
    cout<<"---------------"<<"\n";
    return 0;
}
