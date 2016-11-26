FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y wget dtrx git nano vim tmux htop

# use CTRL+a instead of CTRL+b in tmux
ADD .tmux.conf /root/

# set English as the default locale
RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'
