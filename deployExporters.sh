#!/bin/bash
set -e




if [[ $OUTPUT != exporter.ini ]]
then

fi


for OUTPUT in $(ls exporters)
do

    if [[ $OUTPUT != exporter.ini ]]
    then
    scp $StageName-$OUTPUT kushtrim@192.168.93.3:/home/kushtrim/Work/testrepo/tests
    fi

done