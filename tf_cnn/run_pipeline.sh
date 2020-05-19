
if [ $1 = "4x" ]; then
    echo "Running for 4.x cluster"
    oc create -f pipeline-run/pipelinerun_4_x.yml
else
    echo "Running for 3.11 cluster"
    oc create -f pipeline-run/pipelinerun.yml
fi
