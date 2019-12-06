FROM ubuntu
RUN apt-get update && apt-get install -y vim\
net-tools\
python3\
RUN apt-get insatll -y python3-pip --fix-missing
RUN pip3 install chainer


