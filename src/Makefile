all: wiringPi
	g++ open-door.cpp -o open-door -lwiringPi -lpthread
	chmod +x open-door
	sudo ln -sf `pwd`/open-door /usr/bin/open-door

wiringPi:
	cd /tmp; git clone git://git.drogon.net/wiringPi
	cd /tmp/wiringPi; ./build; rm -r /tmp/wiringPi
