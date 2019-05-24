FROM debian:stretch-20170907
RUN apt-get update
RUN apt-get -y install gcc g++
RUN apt-get -y install build-essential
RUN apt-get -y install libc6-dbg gdb valgrind
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y gcc-multilib
RUN apt-get install -y python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential wget
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apt-utils \
                       forensics-all \
                       foremost \
                       binwalk \
                       exiftool \
                       outguess \
                       pngtools \
                       pngcheck \
                       stegosuite \
                       git \
                       hexedit \
                       python3-pip \
                       python-pip \
                       autotools-dev \
                       automake \
                       libevent-dev \
                       bsdmainutils \
                       ffmpeg \
                       crunch \
                       cewl \
                       sonic-visualiser \
                       xxd \
                       atomicparsley && \
    pip3 install python-magic kamene pwntools && \
    pip install tqdm
RUN wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
RUN apt-get -y install curl tcpdump quagga openjdk-8-jdk netcat
RUN echo "source ~/.gdbinit-gef.py" >> ~/.gdbinit
WORKDIR /data
CMD ["/bin/bash"]
