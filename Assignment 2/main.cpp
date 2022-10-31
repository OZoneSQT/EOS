#include "stdlib.h"
#include "stdio.h"
#include "string.h"

//P9_21 = pin 85

#define DIM 32
#define PWM 3

int period = 20000000;
char currentGPIO[3] = "85";

int getPinMode(int n, int *binaryNum);
int getPinMode(char *pinNumber);
void adjustLED(int intensity);

int main(int argc, **argv) {
    int pinMode = getPinMode(currentGPIO);

    if (argc == 2) {

    } else

system()
}


