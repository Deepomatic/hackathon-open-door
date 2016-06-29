install: compile venv
	sudo sed "s:{DIRECTORY}:$PWD:" django
	sudo update-rc.d django defaults
	sudo service django start

venv:
	sudo apt-get install python-pip
	virtualenv venv
	bash -c "source venv/bin/activate && pip install -r requirements.txt"

compile:
	make -C src