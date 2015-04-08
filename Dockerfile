FROM ubuntu:14.04
MAINTAINER David Langer <david@urbansmarts.de>

RUN apt-get install -y curl
RUN curl -OL https://bintray.com/artifact/download/business/maven/flyway-commandline-3.2.1-linux-x64.tar.gz
RUN tar -xzf flyway-commandline-3.2.1-linux-x64.tar.gz
RUN rm flyway-commandline-3.2.1-linux-x64.tar.gz
RUN chmod +x flyway-3.2.1/flyway

ADD start.sh /
RUN chmod +x start.sh

CMD ["bash", "-C", "./start.sh"]
