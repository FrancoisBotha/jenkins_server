FROM jenkinsci/blueocean

USER root

# Compose

RUN apk add py-pip && \
    apk add python-dev libffi-dev openssl-dev gcc libc-dev make && \
    pip install docker-compose

USER jenkins
