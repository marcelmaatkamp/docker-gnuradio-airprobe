FROM marcelmaatkamp/docker-gnuradio:latest

MAINTAINER m.maatkamp@gmail.com version: 0.1

# ---
# Airprobe
# http://www.rtl-sdr.com/rtl-sdr-tutorial-analyzing-gsm-with-airprobe-and-wireshark/
# http://www.data.ks.uni-freiburg.de/download/comsysSS12/7.Lecture_2012-06-15/exercise06-Analyse.pdf

RUN git clone git://git.gnumonks.org/airprobe.git
RUN cd airprobe/gsmdecode && ./bootstrap && ./configure && make
RUN cd airprobe/gsm-receiver && ./bootstrap && ./configure && make

WORKDIR         /
ENTRYPOINT      ["/bin/bash"]
