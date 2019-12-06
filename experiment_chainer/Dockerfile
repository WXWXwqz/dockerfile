FROM ubuntu
RUN apt-get update && apt-get install -y vim \
net-tools \
python2.7 \
wget \
unzip 
#RUN apt-get insatll -y python2-pip --fix-missing
RUN wget https://pypi.python.org/packages/45/29/8814bf414e7cd1031e1a3c8a4169218376e284ea2553cc0822a6ea1c2d78/setuptools-36.6.0.zip#md5=74663b15117d9a2cc5295d76011e6fd1
RUN unzip setuptools-36.6.0.zip 
WORKDIR  setuptools-36.6.0
RUN ls
RUN python2.7 setup.py install
RUN cd ..
RUN wget https://pypi.python.org/packages/11/b6/abcb525026a4be042b486df43905d6893fb04f05aac21c32c638e939e447/pip-9.0.1.tar.gz#md5=35f01da33009719497f01a4ba69d63c9
RUN tar -zxvf pip-9.0.1.tar.gz
WORKDIR pip-9.0.1
RUN python2.7 setup.py install
RUN pip install --upgrade pip
RUN pip install chainer numpy  dill  scipy
COPY branchynet-master.zip /
WORKDIR /
RUN unzip branchynet-master.zip 



