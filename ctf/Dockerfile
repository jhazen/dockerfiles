FROM debian:stretch
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -y install gcc g++
RUN apt-get -y install build-essential
RUN apt-get -y install libc6-dbg gdb valgrind
RUN apt-get update
RUN apt-get install -y gcc-multilib
RUN apt-get install -y python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential wget
RUN apt-get -y install curl tcpdump quagga openjdk-8-jdk netcat nmap dnsutils mtr iperf
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
                       golang \
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
                       neovim \
                       sonic-visualiser \
                       xxd \
                       atomicparsley && \
    pip3 install python-magic scapy kamene pwntools && \
    pip install tqdm
#RUN wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
#RUN echo "source ~/.gdbinit-gef.py" >> ~/.gdbinit
RUN git clone https://github.com/longld/peda.git ~/.peda
RUN echo "source ~/.peda/peda.py" >> ~/.gdbinit
RUN git clone https://github.com/jhazen/dot-files ~/.dot-files
RUN cd ~/.dot-files && ./install.sh bash vim
RUN git clone https://github.com/radare/radare2 /tmp/radare2
RUN cd /tmp/radare2 && ./sys/install.sh
WORKDIR /data
CMD ["/bin/bash"]
