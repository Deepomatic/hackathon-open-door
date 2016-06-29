all: compile venv

install:
	sed "s:{DIRECTORY}:${PWD}:" django > /etc/init.d/django
	chmod +x /etc/init.d/django
	update-rc.d django defaults
	service django start

venv:
	sudo apt-get install -y python-pip
	pip install virtualenv
	virtualenv venv
	bash -c "source venv/bin/activate && pip install -r requirements.txt"

compile:
	make -C src