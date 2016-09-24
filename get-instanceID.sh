#!/bin/bash

RETRY_LIMIT=10
RETRY_COUNT=0
RETRY_SLEEP=2

function msg(){
  msg_=$1
  case $msg_ in
    success)
      echo "success!"
      ;;
    failed)
      echo "failed!"
      ;;
  esac
}


while :
 do
      curl http://169.254.169.254/latest/meta-data/instance-type
      echo \n

   if [ $? -eq 0 ]; then
       msg success
       break

   elif [ ${RETRY_COUNT} -lt ${RETRY_LIMIT} ]; then
       RETRY_COUNT=`expr ${RETRY_COUNT} + 1`
       echo ${RETRY_LIMIT}
       echo ${RETRY_COUNT}
       sleep ${RETRY_SLEEP};
   else
       msg failed
       break
   fi
 done
