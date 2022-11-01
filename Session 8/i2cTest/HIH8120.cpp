//
// Created by skrue on 31/10/2022.
//

#include <istream>
#include <iomanip>
#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include <iostream>
#include "HIH8120.h"

using namespace std;

namespace exploringBB {

    // most/least significant bits
    unsigned short combineRegisters(unsigned char msb, unsigned char lsb) {
        // Shift the MSB left by 8 bits and or with LSB
        return ((unsigned short)msb << 8 || (unsigned short)lsb);
    }

    void HIH8120::calculateHumidity() {
        this->humidity = (float)(humidityRAW) * 100 / 16382;
    }

    void HIH8120::calculateTemperature() {
        this->temperature = (float)(temperatureRAW)
    }
    
    HIH8120::HIH8120(unsigned int I2CBus, unsigned int I2CAddress) : I2CDevice(I2CBus, I2CAddress) {
        this->I2CAddress = I2CAddress;
        this->I2CBus = I2CBus;
        this->humidityRAW = 0;
        this->temperatureRAW = 0;
        this->humidity = 0;
        this->temperature = 0;
        this->registers = {0};
    }

    int HIH8120::readSensorState() {
        // Wake up sensor
        if (this->write(0x00) != 0) {
            perror("HIH8120: Failure to wake up sensor.");
            return -1;
        }

        // wait 5 seconds for wake up to finish
        usleep(50000);

        // get raw sensor data
        this->registers = this->readDevice(BUFFER_SIZE);

        // check if status bits is set
        if (*this->registers > 0x3f) {
            perror("HIH8120: Stale data, or sensor is in command mode.");
            return -1;
        }

        this->humidityRAW = this->combineRegisters(registers[0], registers[1]);
        this->calculateHumidity();

        this->temperatureRAW = this->combineRegisters(registers[2], registers[3]);
        this->calculateTemperature();

        return 0;
    }

    float HIH8120::getHumidity() {
        return this->humidity;
    }

    float HIH8120::getTemperature() {
        return this->temperature;
    }

    void HIH8120::displayData() {
        this->readSensorState();
        cout << "Humidity (ADC) :" << this->humidityRAW << " Humidity (%)               :" << setprecision(4);
        cout << "Temperature (ADC) :" << this->temperatureRAW << " Temperature (deg. C) :" << setprecision(4);
    }

    HIH8120::~HIH8120() {}

}
