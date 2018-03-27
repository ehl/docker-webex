FROM i386/ubuntu:rolling

RUN yes Y | apt-get update
RUN yes Y | apt-get install firefox default-jdk icedtea-plugin
# You should change the gid and uid to match your own
RUN yes Y | addgroup --gid 1001 webex
RUN yes Y | adduser --uid 1001 --gid 1001 --disabled-password --home /home/webex webex

USER webex

ENTRYPOINT [ "firefox" ]