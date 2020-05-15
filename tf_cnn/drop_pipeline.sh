oc delete pipeline/tf-cnn
oc delete pipelinerun/tf-cnn-pipeline-run
oc delete pipelineresource/tfc-build-image
oc delete pipelineresource/tfc-repo
oc delete task/tfc-buildah
oc delete task/tfc-run
