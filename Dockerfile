FROM ubuntu:20.04

RUN apt update && apt upgrade

RUN apt install make -y
RUN apt install mingw32-gcc-c++ -y
RUN apt install g++ -y

COPY ./* /template/

WORKDIR /template/

RUN make linux

RUN chmod +x ./bin/

CMD 