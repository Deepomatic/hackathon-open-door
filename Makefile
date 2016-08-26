all: compile

install: compile
	if [ ! -d venv ]; then make libs; fi
	bash install/install.sh

libs:
	apt-get install -y make gcc python-pip python-dev nginx sudo
	pip install virtualenv
	virtualenv venv
	bash -c "source venv/bin/activate && pip install -r requirements.txt"
	pip install -r requirements.txt

compile:
	if [ ! -d venv ]; then make libs; fi
	make -C src

clean:
	rm -rf venv
	make -C src clean