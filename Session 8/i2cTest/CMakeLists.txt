cmake_minimum_required(VERSION 3.23)
project(i2cTest)

set(CMAKE_CXX_STANDARD 14)

add_executable(i2cTest main.cpp HIH8120.cpp HIH8120.h I2CDevice.cpp I2CDevice.h settings.h BMP180.cpp BMP180.h)
