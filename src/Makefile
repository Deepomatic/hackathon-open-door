all: wiringPi
	g++ open-door.cpp -o open-door -lwiringPi -lpthread
	chmod +x open-door
	sudo ln -sf `pwd`/open-door /usr/bin/open-door

wiringPi:
	git clone git://git.drogon.net/wiringPi
	cd wiringPi; ./build
