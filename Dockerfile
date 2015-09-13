# basic part
FROM ubuntu:14.04
MAINTAINER Piasy Xu <xz4215@gmail.com>
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install dependency
RUN apt-get install -y git wget
RUN wget https://raw.githubusercontent.com/Piasy/GitlabSync2GithubDocker/master/gitAmHandy
RUN chmod +x ./gitAmHandy

# entry point
ENTRYPOINT ["./gitAmHandy"]
