#!/bin/bash

## environment values
export YONA_VERSION=1.9.1
export YONA_ROOT=/opt/yona
export YONA_HOME=${YONA_ROOT}/yona-${YONA_VERSION}
export YONA_DATA=${YONA_ROOT}/data

## PID file delete
if [ -f "${YONA_HOME}/RUNNING_PID" ];then
  rm ${YONA_HOME}/RUNNING_PID
fi

## run
${YONA_HOME}/bin/yona
