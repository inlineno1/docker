FROM inlineno1/centos7:0.3

## environment values 
ENV YONA_VERSION 1.9.1
ENV YONA_ROOT /opt/yona
ENV YONA_HOME ${YONA_ROOT}/yona-${YONA_VERSION}
ENV YONA_DATA ${YONA_ROOT}/data

## install yona
RUN mkdir -p ${YONA_ROOT}
RUN mkdir -p ${YONA_HOME}
RUN mkdir -p ${YONA_DATA}

WORKDIR ${YONA_ROOT}

RUN wget https://github.com/yona-projects/yona/releases/download/v${YONA_VERSION}/yona-v${YONA_VERSION}-mariadb-10.2.bin.zip
RUN unzip yona-v${YONA_VERSION}-mariadb-10.2.bin.zip -d .
RUN rm -f yona-v${YONA_VERSION}-mariadb-10.2.bin.zip

## add yona user
RUN groupadd yona && \
useradd -c "yona user" -d ${YONA_ROOT} -g yona -s /bin/bash yona && \
chown -R yona:yona ${YONA_ROOT}

## change user
USER yona 

## yona port
EXPOSE 9000

## run
CMD ${YONA_HOME}/bin/yona
