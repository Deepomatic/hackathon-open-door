all: open-door.c
	if [ ! -d wiringPi ]; then git submodule update --init; fi
	cd wiringPi; ./build;
	gcc open-door.c -o open-door -lwiringPi -lpthread

clean:
	rm -f open-door