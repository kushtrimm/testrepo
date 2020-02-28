#!/bin/bash
set -e




if [[ $StageName = EUROPE ]]
then
    echo "Using europe url"
fi


for OUTPUT in $(ls exporters)
do

    if [[ $OUTPUT != exporter.ini ]]
    then
        echo "scp $StageName-$OUTPUT kushtrim@192.168.93.3:/home/kushtrim/Work/testrepo/tests"
    fi

done