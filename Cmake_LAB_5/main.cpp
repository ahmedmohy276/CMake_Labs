#include <iostream>
#include "calc.hpp"
#include "wifi.hpp"
#include "defaultconfig.h"
using namespace std;

int main(void)
{
    wifi_init();
    cout << "Sum = " << sum(1,2) << endl;
    cout << "z = " << z << endl;
    cout << "Software Version is " << HELLOAPP_VERSION_MAJOR << "." << HELLOAPP_VERSION_MINOR << endl;
    cout << "PRODUCT_YEAR is " << PRODUCT_YEAR << endl;
    cout << "PRODUCT_TYPE is " << PRODUCT_TYPE << endl;
    return 0;
}