FROM alpine:3.9
VOLUME .:/ansible
WORKDIR /ansible
ADD entrypoint.sh /
ADD requirements.txt /ansible
RUN apk add ansible && \
      pip3 install -q -r /ansible/requirements.txt && \
      mkdir /.ansible && \
      chmod 777 /.ansible
ENTRYPOINT ["/entrypoint.sh"]
