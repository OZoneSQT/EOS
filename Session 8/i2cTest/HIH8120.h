//
// Created by skrue on 31/10/2022.
//

#ifndef I2CTEST_HIH8120_H
#define I2CTEST_HIH8120_H

#include "I2CDevice.h"

namespace exploringBB {
    class HIH8120: protected I2CDevice {

    public:

    private:
        unsigned int I2CBus, I2CAddress;
        unsigned char *registers;
        unsigned short humidityRAW, temperatureRAW;                             // Raw data
        float humidity, temperature;                                            // Computed data
        unsigned short combineRegisters(unsigned char msb, unsigned char lsb);  // most/least significant bits
        void calculateHumidity();
        void calculateTemperature();

    public:
        HIH8120(unsigned int I2CBus, unsigned int I2CAddress = 0x27);
        virtual int readSensorState();
        virtual float getHumidity();
        virtual float getTemperature();
        virtual void displayData();                                             //Debug method

        virtual ~HIH8120();
    };
}



#endif //I2CTEST_HIH8120_H
