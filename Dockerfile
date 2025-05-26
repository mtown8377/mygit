FROM ubuntu:22.04
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y ansible
RUN apt install -y pip
RUN apt install -y vim
RUN apt install -y git
RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv --python 3.10.12 install
RUN pipenv install ansible
RUN pipenv install boto 
RUN pipenv install boto3
RUN pipenv install botocore
RUN mkdir /monk
RUN chmod 744 /monk
COPY play.yml /monk
COPY myrun.sh /monk
COPY ansible.cfg /monk
COPY hosts.ini /monk
COPY jump.yml /monk
COPY router.yml /monk
WORKDIR /monk
