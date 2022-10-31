#include "stdlib.h"
#include "stdio.h"
#include "string.h"

//P9_21 = pin 85

#define DIM 32
#define PWM 3

int period = 20000000;
char currentGPIO[3] = "85";

void decToBinary(int n, int *binaryNum);
int getPinMode(char *pinNumber);
void adjustLED(int intensity);
void help();

int main(int argc, char **argv) {
    int pinMode = getPinMode(currentGPIO);

    if (argc == 2) {
        if(pinMode == PWM) {
            printf("Pin is set for PWM");
        } else {
            system("config-pin P9_21 pwm");
        }

        int intensity = strtol(argv[1], NULL, 10);

        if (intensity >= 0 && intensity <= 100) {
            adjustLED(intensity);
        } else {
            printf("Input is not an integer");
        }

    } else {
        help();
    }
}

void adjustLED(int intensity) {
    FILE *file;
    int duty_cycle = period * intensity/100;

    //Write period
    file = fopen("/sys/class/pwmchip1/pwm-1:1/period", "w");
    fprintf(file, "%d", period);
    fclose(file);

    //Write duty cycle
    file = fopen("/sys/class/pwmchip1/pwm-1:1/duty_cycle", "w");
    fprintf(file, "%d", period);
    fclose(file);

    //Enable PWM
    file = fopen("/sys/class/pwmchip1/pwm-1:1/enable", "w");
    fprintf(file, "%d", 1);
    fclose(file);
}

void decToBinary(int n, int *binaryNum) {
    int i = 0;
    while (n > 0) {
        // save remainder in binary array
        binaryNum[i] = n % 2;
        n = n / 2;
        i++;
    }
}

int getPinMode(char *pinNumber) {
    char mode[20];
    int n, bin[DIM], sliced = 0;
    FILE *file;

    //OBS check string
    file = fopen("/sys/kernel/debug/pinctrl/44e10800.pinmux-pinctrl-single/pins", "r");

    //Skip first line
    fscanf(file, "%*s %*s %*d");

    //Read all lines of table
    while (fscanf(file, "%*s %s %*s %*s %s %*s", pinNumber, &mode) == 2) {
        if (!strcmp(pinNumber, currentGPIO)) break;
    }

    //Conversion to integer
    sscanf(pinNumber, "%x", &n);
    printf("The integer is: %d\n", n);

    //Conversion to binary
    printf("The binary is ");
    decToBinary(n, bin);

    //Take three least significant Bits and convert them to integer
    for (int i = 0; i < 3; i++) {
        sliced += 2 * i * bin[i];
    }
    return sliced;
}

void help() {
    printf("Error: the number of arguments is wrong.\n");
    printf("How to:\nset_light <integer> ==> adjust the percentage\nof period time to adjust light intensity.");
    printf("set_light -h ==> print help menu.");
}