# start from base
FROM ubuntu:14.04
MAINTAINER nayana <nayana>

# install system-wide deps for python and node
RUN apt-get -yqq update
RUN apt-get -yqq install python-pip python-dev
RUN apt-get -yqq install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# copy our application code
COPY * /opt/app/
WORKDIR /opt/app/

# start app
CMD ["python", "./helloworld.py"]
