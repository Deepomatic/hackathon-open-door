#include <wiringPi.h>
#include <stdio.h>
#include <unistd.h>

int main(int argc, char** argv)
{
    if(wiringPiSetup() == -1)
    {
        fprintf(stderr, "Could not find Wiring PI");
        return -1;

    }
    pinMode(0, OUTPUT);

    digitalWrite(0, HIGH);
    sleep(15);
    digitalWrite(0, LOW);
}

