## Running tf_cnn_benchmarks on Openshift-Pipelines

**Requirements**
- create a project named `mlperf` on Openshift cluster 3.11
```
oc new-project mlperf
oc create sa mlperf
oc adm policy add-role-to-user edit -z mlperf -n mlperf
oc adm policy add-scc-to-user privileged -z mlperf -n mlperf
```


### Starting and stopping the pipeline

Run the setup script to create Tasks, Pipelines
`./setup.sh`

To run the pipeline, execute the run script.
`./run_pipeline.sh 4x`

To delete the pipeline , task resources execute the drop_pipeline script.   
`./drop_pipeline.sh`
  
To get the logs from the benchmark run, as well as the final result, run the get_logs script  
`./get_logs.sh`
The file `logs.txt` will contain the entirety of the output from when the benchmark was run, and `result.txt` will give you the final results.


The pipeline is comprised of two tasks, `build` and `run-benchmark`.
See the [tf_cnn_benchmarks](https://github.com/tensorflow/benchmarks/tree/master/scripts/tf_cnn_benchmarks) for more information about the benchmark.  
