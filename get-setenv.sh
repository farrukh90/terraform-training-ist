#!/bin/bash
if [ "$0" = "$BASH_SOURCE" ]
then
    echo "$0: Please source this file."
    echo "e.g. source ./get-setenv.sh configurations/data-rnd-us-vet1-v1"
    return 1
fi

status_code=$(curl --write-out %{http_code} --silent --output /dev/null --max-time 10 https://github.com)

if [[ "$status_code" -eq 200 ]]
    then
        #wget --quiet -O .setenv "https://github.com/farrukh90/repo/setenv"
        source ./.setenv $1
    else
        echo "ERROR: Not able to access artifactory"
fi
 backend.tf
