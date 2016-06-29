#include <wiringPi.h>
#include <iostream>
#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include <stdlib.h>
#include <sched.h>
#include <sstream>

using namespace std;

int main (int argc, char** argv)
{
    if(wiringPiSetup() == -1)
    {
        cerr << "Could not find Wiring PI";
        return -1;

    }
    pinMode(0, OUTPUT);

    digitalWrite(0, HIGH);
    sleep(10);
    digitalWrite(0, LOW);
}

