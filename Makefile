install: compile venv
	sudo sed "s:{DIRECTORY}:${PWD}:" django > /etc/init.d/django
	sudo chmod +x /etc/init.d/django
	sudo update-rc.d django defaults
	sudo service django start

venv:
	sudo apt-get install -y python-pip
	pip install virtualenv
	virtualenv venv
	bash -c "source venv/bin/activate && pip install -r requirements.txt"

compile:
	make -C src