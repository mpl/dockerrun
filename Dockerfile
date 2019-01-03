FROM golang:latest

RUN mkdir -p src/github.com/mpl
WORKDIR src/github.com/mpl
RUN git clone https://github.com/mpl/dockerrun.git
WORKDIR dockerrun
