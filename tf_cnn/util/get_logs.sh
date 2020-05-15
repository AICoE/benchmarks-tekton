#!/usr/bin/bash

POD=`echo $(oc get pods -o name) | grep -o 'pod/tf-build-pipeline-run-run[^ ]*'`

oc logs -f $POD --container='step-run' > logs.txt
IFS=',' read -ra RESULT <<< `tail -n 1 'logs.txt'`

tee result.txt << EOF
${RESULT[0]}

NAME: ${RESULT[1]}
SEED: ${RESULT[2]}
TIME: ${RESULT[3]} sec
USER: ${RESULT[4]}
START: ${RESULT[5]}
EOF
