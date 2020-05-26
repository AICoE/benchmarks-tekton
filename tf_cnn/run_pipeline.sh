DEVICE="$1"
OS_VERSION="$2"

if [ $DEVICE == 'cpu' ]; then
	if [ $OS_VERSION == '4x' ]; then
	    echo "Running for 4.x cluster"
	    oc create -f pipeline-run/pipelinerun_4x-cpu.yml
	else
		oc create -f pipeline-run/pipelinerun-cpu.yml
	fi
elif [ $DEVICE == 'gpu' ]; then
	if [ $OS_VERSION == '4x' ]; then
	    echo "Running for 4.x cluster"
	    oc create -f pipeline-run/pipelinerun_4x-gpu.yml
	else
		oc create -f pipeline-run/pipelinerun-gpu.yml
	fi
else
	echo "must specify either cpu or gpu"
fi
