cat /etc/os-release

Sudo yum install docker-ce docker-ce-client containered.io
sudo systemctl start docker
sudo docker run hello-world

Docker run Ubuntu
Docker ps
Docker ps –a 

Docker run –name ubuntu-sleeper ubuntu-sleeper
Docker run –name ubuntu-sleeper ubuntu-sleeper 10

Docker run –d kodekloud/event-simulator (-d option will run the application in the background)



Docker build Dockerfile –t <docker_accountname>/my-custom-app
Docker push <docker_accountname>/my-custom-app
Docker history <docker_accountname>/my-custom-app
Docker build –t <image name> . //command to see the steps and tasks
docker build . -t webapp-color:lite
Docker images –return the list of images
docker run --publish 8000:8000 node-docker
docker run -p 8282:8000 node-docker


Dockerfile

FROM Ubentu

RUN apt-get update
RUN apt-get install python

RUN pip install flask
RUN pip install flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
