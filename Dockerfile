#------------ base imagefile
#============ normal ubuntu
FROM ubuntu:22.04

#------------ set time zone
RUN apt-get update && apt-get install -y tzdata
ENV TZ=Asia/Tokyo

# ----------- set work dir
WORKDIR /root

#------------ install git
RUN apt install git

#------------ setup lamp
COPY ./src/setup.sh /root/
RUN bash ~/setup.sh