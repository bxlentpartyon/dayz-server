#! /bin/bash

LOG_DIR=/data/dayz/profiles

set -x

find ${LOG_DIR} -name '*.log' -atime +7 -exec rm {} \;
find ${LOG_DIR} -name '*.ADM' -atime +7 -exec rm {} \;
find ${LOG_DIR} -name '*.RPT' -atime +7 -exec rm {} \;
