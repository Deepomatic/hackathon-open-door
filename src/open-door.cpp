#include <wiringPi.h>
#include <iostream>
#include <unistd.h>

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

