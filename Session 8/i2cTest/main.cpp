#include <iostream>
#include <unistd.h>
#include <pthread.h>
#include "HIH8120.h"
//#include "BMP180.h"
#include <stdio.h>
#include <iomanip>

using namespace std;
using namespace exploringBB;

int main(int argc, char *argv[]) {
    unsigned int i2c_bus = 2;

    if(argc > 1){
        if (*argv[1] >= '0' && *argv[1] <= '2') {
            i2c_bus = *argv[1] + 0x30;
        } else {
            cout << "Usage:" << argv[0] << " [i2c:bus]\r\n*";
            cout << "i2c_bus is either 0, 1, or 2. Default is 2\r\n*";
            return -1;
        }
    }

    HIH8120 sensor(i2c_bus, 0x27);
    //sensor.displayData();

    sensor.readSensorState();   // Wake up sensor, and delay init time
    cout << "Temperature and Humidity sensor i2c test application" << endl;
    cout << "Humidity (%)         :" << setprecision(3) << sensor.getHumidity() << endl;
    cout << "Temperature (deg. C) :" << setprecision(3) << sensor.getTemperature() << endl;


    return 0;
}
