#include <iostream>
#include "calc.hpp"
#include "wifi.hpp"
#include "defaultconfig.h"
using namespace std;

int main(void)
{
    #ifdef DEBUGINFO
        cout << DEBUGINFO << endl;
    #endif

    wifi_init();
    cout << "Sum = " << sum(1,2) << endl;
    cout << "z = " << z << endl;
    cout << "PRODUCT_YEAR is " << PRODUCT_YEAR << endl;
    cout << "PRODUCT_TYPE is " << PRODUCT_TYPE << endl;
    cout << "compiler definition is " << STD_CXX << endl;

    return 0;
}