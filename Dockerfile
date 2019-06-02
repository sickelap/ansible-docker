FROM alpine:3.9
VOLUME .:/ansible
WORKDIR /ansible
ADD requirements.txt /ansible
RUN apk add ansible
RUN pip3 install -q -r /ansible/requirements.txt
