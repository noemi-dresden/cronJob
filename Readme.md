# Running cronJob with Env variable

2 different ways (docker vs k8s) to run cronjob requiring env variables inside a container. 

Here what we want to do:
* We have a script file `job.sh` containing the job
* We want this script to run the script every 5 min for example

## docker
* `docker buil -t my-image .`
* `docker run -e $MY_ENV_VARIABLE=myValue my-image`

## k8s
* `docker buil -t my-image .` and push the image to `your-repository`
* `kubectl create -f deploy.yml`