#!/bin/bash
set -e

stage = echo "$StageName" | awk '{print tolower($0)}'

if [[ $StageName = EUROPE ]]
then
    echo "Using europe"
fi


for OUTPUT in $(ls exporters)
do

    if [[ $OUTPUT != exporter.ini ]]
    then
        ssh kushtrim@192.168.93.3 "hostname"
        #scp $OUTPUT  kushtrim@192.168.93.3:/home/kushtrim/Work/testrepo/tests/$StageName-$OUTPUT
    fi

done
