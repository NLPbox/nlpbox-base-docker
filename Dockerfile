FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y wget dtrx git nano vim tmux htop

ADD .tmux.conf /root/

