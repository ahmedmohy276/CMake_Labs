#include <iostream>
#include "calc.hpp"
#include "wifi.hpp"
using namespace std;

int main(void)
{
    wifi_init();
    cout << "Sum = " << sum(1,2) << endl;
    cout << "z = " << z << endl;

    return 0;
}